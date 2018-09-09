class ApplicationController < ActionController::Base
  #Actions
  before_action :authenticate_user! #-> routes to login if not authenticated
  include DeviseCustom
end
