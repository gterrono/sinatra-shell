Sinatra Shell
=============

About
-----
This is a shell of a webapp designed to help get you up and running quickly and win PennApps with some classy web-development (using Sinatra). An example of something that can be built starting with this is at https://github.com/gterrono/pennapps-sinatra.

Setup
-----
* Install Ruby 1.9.3
* Install the heroku toolbelt: https://toolbelt.heroku.com
* Install dm-sqlite-adapter and dm-postgres-adapter
  * Check http://datamapper.org/getting-started.html under "Installing an Adapter" for instructions
* Run `bundle install`

You also may have to install gcc and g++

Running the app
---------------
* Run `foreman start` in the same directory as sample_app.rb
* The app can be viewed in a browser at [localhost:5000] (http://localhost:5000)

Deployment
----------
* Create a heroku account at http://heroku.com
* Login to heroku by running `heroku login`
* Run `heroku create`
* Deploy with `git push heroku master`

Libraries Used
--------------
* Sinatra (http://sinatrarb.com)
* DataMapper (http://datamapper.org)
* HTML5 Boilerplate (http://html5boilerplate.com)
* Twitter Bootstrap (http://twitter.github.com/bootstrap)
