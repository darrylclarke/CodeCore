# Getting on the web
## How the web works at a high level
- Need an IP address.
- DNS resolves

```
gem install rerun
```

- Browser understands HTTP, Javascript, HTML
- Doesn't understand ERB, Ruby

## Sinatra
```
gem install sinatra --no-ri --no-rdoc
 ... create app.rb ...
             require 'sinatra'

             get "/" do
                 "Hello World"
             end

2015.08.13 $ cd sinatra/
sinatra $ ruby app.rb
[2015-08-13 14:18:34] INFO  WEBrick 1.3.1
[2015-08-13 14:18:34] INFO  ruby 2.2.2 (2015-04-13) [x86_64-darwin14]
== Sinatra (v1.4.6) has taken the stage on 4567 for development with backup from WEBrick
[2015-08-13 14:18:34] INFO  WEBrick::HTTPServer#start: pid=13298 port=4567
::1 - - [13/Aug/2015:14:19:06 -0700] "GET / HTTP/1.1" 200 11 0.0047
localhost - - [13/Aug/2015:14:19:06 PDT] "GET / HTTP/1.1" 200 11
- -> /
::1 - - [13/Aug/2015:14:19:07 -0700] "GET /favicon.ico HTTP/1.1" 404 473 0.0006
localhost - - [13/Aug/2015:14:19:07 PDT] "GET /favicon.ico HTTP/1.1" 404 473
http://localhost:4567/ -> /favicon.ico
http://localhost:4567/
```

## REST - Representational State Transfer
- Architectural style for web communications
- Rails and Sinatra both use it
- APIs, applications
- GET       --> display a page
- POST      --> create / add
- PUT/PATCH --> update
- DELETE    --> deletes something

## ERB - Embedded Ruby
- Embed Ruby code in an HTML document
- views directory, same level as app.rb
- files with *.erb extension

## notes
- form action must match 'post "/submit_contact" do ' in app.rb
- input tag has `name="full_name">`
