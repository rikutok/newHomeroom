class AdminsController < ApplicationController
  protect_from_forgery
  def index
    if request.post? then
      @passwords = params['pass']
      @admin = "off"
      if @passwords == 'rikut0827' 
        @admin = "on"
        @homeroom = Homeroom.all
      else
        @admin = "off_wait"
      end
    else
      @admin = "off"
    end
  end
  
end