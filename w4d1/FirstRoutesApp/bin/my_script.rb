require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
scheme: 'http',
host: 'localhost',
port: 3000,
path: '/users.html',
query_values: { 'key[a]' => 'b' }
).to_s

# puts RestClient.post(url, {name: "Cody", email: "cody@appacademy.io" })

def create_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json'
  ).to_s

  puts RestClient.post(
  url,
  { user: { name: "Gizo", email: "gizmo@gizmo.gizmo" } }
  )
end

# create_user

def destroy_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/3.json'
  ).to_s

  puts RestClient.delete(
  url,
  { user: { name: "Barney", email: "purple_dude@pbs.org" } }
  )
end

  def update_user
    url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json'
    ).to_s

    puts RestClient.patch(
      url,
      {user: { name: "Michael", email: "ruby@tutorial.org" } }
      )
  end
 destroy_user
# update_user
