require 'sinatra'
require 'sinatra/reloader' if development?
require 'faker'
require 'gmail_sender'

# This allows using the sessions feature in Sinatra
enable :sessions

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# When we receive a request that has a GET HTTP request with a URL of "/",
# Sinatra will execute the code in here.
get "/" do
    # "<h1>Hello World</h1>"
    # this will look for a template called index.erb inside the folder 'views'
    # it will use the template to generate HTML code and send it back as
    # a response to the client
    if !session[:number_of_times_on_home_page]
      session[:number_of_times_on_home_page] = 1
    else
      session[:number_of_times_on_home_page] += 1
    end

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


get "/gmail-sender" do
  @email = "darrylclarke@sync.mylifeorganized.net"
  #session[:password] = "abcdefg"
  erb :gmail_send, layout: :application
end

post "/gmail-sender" do
  @email = params[ "email" ]
  session[:password] = params[ "password" ]
  subject = params["subject"]
  body  = params[ "body"  ]

  # do send
  g = GmailSender.new( "darrylclarke100@gmail.com", session[:password] )
  # you can attach any number of files, but there are limits for total attachments size
  # g.attach('/path/to/document.hz')
  @result = g.send(:to      => @email,
                   :subject => subject,
                   :content => body
                  )
  erb :gmail_send, layout: :application
end


get "/colour/:name" do
  # erb :gmail_send
  # {:layout => :application,
  # #  :locals => {'first_name' => nil, 'question_1' => nil, 'question_2' => nil, 'question_3' => nil}
  # }
  if params[:name] == "normal"
    session[:background_colour] = "white"
  else
    session[:background_colour] = params[:name]
  end
  "Background colour is now #{session[:background_colour]}"
  redirect back # "/"
  # if request.path_info == "/index" ## used to check if coming from a certain page.
end


#
#
# Personality Test
#
#
get "/personality_test" do
  erb( :personality_test,
       {:layout => :application,
        :locals => {'first_name' => nil, 'question_1' => nil, 'question_2' => nil, 'question_3' => nil}
       }
     )
end

post "/personality_test" do

  # "#{params}"

  question_1 = params[ "work-best" ]
  question_2 = params[ "consider-yourself" ]
  question_3 = params[ "interested-in" ]
  first_name = params[ "first_name" ]
  #
  # "#{first_name} q1=#{question_1} q2=#{question_2} q3=#{question_3}"
  #
  @result = "You are awesome"

  erb( :personality_test,
       {:layout => :application,
        :locals => {'first_name' => first_name,
                    'question_1' => question_1,
                    'question_2' => question_2,
                    'question_3' => question_3   }
       }
     )
end


#
#
# Faker
#
#
get "/faker" do
  @result = nil
  erb( :faker,
       {:layout => :application,
        # :locals => {'first_name' => nil, 'question_1' => nil, 'question_2' => nil, 'question_3' => nil}
       }
     )
end

post "/faker" do

  # "#{params}"
  # "#{first_name} q1=#{question_1} q2=#{question_2} q3=#{question_3}"

  # question_1 = params[ "work-best" ]
  # question_2 = params[ "consider-yourself" ].to_i
  # question_3 = params[ "interested-in" ].to_i
  # first_name = params[ :first_name ].to_s


  @result = Faker::Company.catch_phrase

  erb( :faker,
       {:layout => :application,
        # :locals => {'first_name' => first_name,
        #             'question_1' => question_1,
        #             'question_2' => question_2,
        #             'question_3' => question_3   }
       }
     )
end



#
#
# Faker
#
#
get "/pick_winner" do
  @result = nil
  # @names = "a, b, c, d"
  erb( :pick_winner,
       {:layout => :application,
        # :locals => {'first_name' => nil, 'question_1' => nil, 'question_2' => nil, 'question_3' => nil}
       }
     )
end

post "/pick_winner" do

  @names  = params[ "names" ]
  # @result = @names.split(',').shuffle.first
  @result = @names.split(',').sample

  session[:the_last_winner] = @result # Store last winner

  erb( :pick_winner,
       {:layout => :application,
       }
     )
end

#
#
# Authorization
#
#
#
get "/test_protected" do
  protected!
  "You're In!"
end
