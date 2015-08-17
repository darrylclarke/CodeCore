require 'sinatra'
require 'sinatra/reloader' if development?

# When we receive a request that has a GET HTTP request with a URL of "/",
# Sinatra will execute the code in here.
get "/" do
    # "<h1>Hello World</h1>"
    # this will look for a template called index.erb inside the folder 'views'
    # it will use the template to generate HTML code and send it back as
    # a response to the client
    erb( :index, {layout: :application})  # erb is a method from the Sinatra gem
end

get "/hello" do   #get is a method that takes a parameter and a block
  "Greetings from Spock"
end

get "/cookie" do
  erb :cookie, layout: :application
end

get "/contact" do   # This is the contact 'action'
  erb :contact, layout: :application # note implicit hash as last parameter
end

post "/submit_contact" do       # This action handles the post request from the browser
  # params is a hash object that is given to us by Sinatra that contains key-value pairs
  # from the parameters received from the client.
  # If it's a web form, the key matches the "name" HTML attribute, the vlaue
  # will be whatever the user enters.
  name = params[:full_name]
  temp_c = params[:temperature]
  temp_f = (temp_c.to_f * 9 / 5) + 32
  "Thanks #{name} for contacting us\n#{params.to_s}\nThe temperature in F is #{temp_f}"
end
