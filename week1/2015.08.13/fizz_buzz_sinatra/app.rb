require 'sinatra'
require 'sinatra/reloader' if development?
require '~/codecore/2015.08.12/exercises/fizz_buzz_class.rb'

# When we receive a request that has a GET HTTP request with a URL of "/",
# Sinatra will execute the code in here.
# get "/" do
#     # "<h1>Hello World</h1>"
#     # this will look for a template called index.erb inside the folder 'views'
#     # it will use the template to generate HTML code and send it back as
#     # a response to the client
#     erb( :fizz_buzz, {layout: :application})  # erb is a method from the Sinatra gem
# end

post "/submit_numbers" do       # This action handles the post request from the browser
  # params is a hash object that is given to us by Sinatra that contains key-value pairs
  # from the parameters received from the client.
  # If it's a web form, the key matches the "name" HTML attribute, the vlaue
  # will be whatever the user enters.
  number_1 = params[:first_number ].to_i
  number_2 = params[:second_number].to_i

  fb = FizzBuzz.new( number_1, number_2 )
  output = fb.generate

  erb( :results,
       {:layout => :application, :locals =>
            {'number_1' => number_1, 'number_2' => number_2, 'fb' => output}
       }
     )
end

get "/both" do
  erb( :both,
       {:layout => :application, :locals =>
            {'number_1' => nil, 'number_2' => nil, 'fb' => nil}
       }
     )

end

post "/both" do
  number_1 = params[:first_number ].to_i
  number_2 = params[:second_number].to_i

  fb = FizzBuzz.new( number_1, number_2 )
  output = fb.generate

  erb( :both,
       {:layout => :application, :locals =>
            {'number_1' => number_1, 'number_2' => number_2, 'fb' => output}
       }
     )

end
