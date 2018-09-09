# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

setting up environment
install ruby for mac, dont use the system ruby
-> /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
Download latest stable rvm:
\curl -sSL https://get.rvm.io | bash -s stable
run:-> "source /Users/konrad/.rvm/scripts/rvm" in every open shell or start it by the start in the bashrc
install ruby version(you can install more than one):
-> rvm install ruby-2.3.3
-> "rvm list" shows installed ruby-versions and selecting conditions
-> "which ruby" shows now path of the installed version
-> install rails gem for ruby-version "gem install rails"
-> "bundle install" installs missing gems
-> update gem versions "gem update"
-> use "bin/rails server" to start the server
install at first the package manager "brew"
-> then with brew the cf-programm"brew install cloudfoundry/tap/cf-cli"
setting up deployment endpoint "cf api https://api.de.a9s.eu" with email and pw
-> creating a service for our deployment:
  -> show db-servicePlans: "cf marketplace"
  -> create one "cf cf create-service a9s-postgresql94 postgresql-single-small faq-Pg-Db "
  -> bind it on an service "cf bind-service faq fag-Pg-Db"
  -> show services "cf services"



  Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'faq. ... .anynines.com', port: 8080 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
