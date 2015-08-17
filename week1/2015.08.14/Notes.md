# Authorization
- Helpers are passed into the erb

```
require 'sinatra'

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

get '/' do
  "Everybody can see this page"
end

get '/protected' do
  protected!
  "Welcome, authenticated client"
end
```

- Rack is used by sinatra and rails to do http requests

- `401` is a HTTP response code
- `403` useful?
- `404` page not found
- `200` all OK
- `500` General server error
- `301`, `303`  Redirect
- /favicon.ico

`wiki http response codes` in Google, wikipedia "List of HTTP status codes"

## Cookies and Sessions
- HTTP is stateless
- User authentication (does user log in for every HTTP request? ==> cumbersome)

## Cookies
- Pieces of information that get sent with every request
- key-value pairs
- Browser sends all cookies for a domain name along with the HTTP request
- All future requests are independent, but send same cookies
- Server must understand
- Cookies are specific to one browser, not shared among browsers
- Incognito windows don't share cookies
- Cookies automatically encrypted

## Sessions in Sinatra
- app.rb enable sessions

## Sinatra request object
- if request.path_info == "/index" ## used to check if coming from a certain page.

## Different way to get at 'name'
```
get "/colour/:name"  do |name|
  session[:bg_color] = names
  redirect back
end
```

# Postgress
```

To have launchd start postgresql at login:
 ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
Then to load postgresql now:
 launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
Or, if you don't want/need launchctl, you can just run:
 postgres -D /usr/local/var/postgres
```
