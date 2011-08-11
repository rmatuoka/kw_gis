class HomeController < ApplicationController
  before_filter :check_access_code
end
