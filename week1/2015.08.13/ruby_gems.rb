# Gems
libraries of code
Build on top of other's code
Save time
> gem list

> rvm list
each has its own set of gems
(switch ==> rvm use 2.2.1)

> gem install snooby
exercises $ gem install snooby
Fetching: net-http-persistent-2.9.4.gem (100%)
Successfully installed net-http-persistent-2.9.4
Fetching: snooby-0.1.5.gem (100%)
Successfully installed snooby-0.1.5
Parsing documentation for net-http-persistent-2.9.4
Installing ri documentation for net-http-persistent-2.9.4
Parsing documentation for snooby-0.1.5
Installing ri documentation for snooby-0.1.5
Done installing documentation for net-http-persistent, snooby after 0 seconds
2 gems installed


exercises $ irb
2.2.2 :001 > require "snooby"
true
2.2.2 :002 > reddit = Snooby::Client.new
#<Snooby::Client:0x007fa6d3a4f2a0>
2.2.2 :004 > reddit.subreddit('askscience').posts[0].title
"AskScience Panel of Scientists XIII"
2.2.2 :005 > reddit.subreddit('askscience').posts[1].title
"AskScience AMA Series: We are five particle physicists here to discuss our projects and answer your questions. Ask Us Anything!"
2.2.2 :006 > reddit.subreddit('gaming').posts[1].title
"Fallout Shelter released for Android!"
2.2.2 :007 >
