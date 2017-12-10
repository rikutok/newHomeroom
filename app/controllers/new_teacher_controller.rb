class NewTeacherController < ApplicationController
  protect_from_forgery
  def index
    
  end
  
  def newer
    @name = params['name']
    @sets = params['list']
    @mail_adress = params['mail']
    @comments = params['comment']
    x = Homeroom.new(:name => @name, :set => @sets, :mail => @mail_adress, :student => "false", :comments => @comments);
    x.save
    redirect_to "/homerooms/"  
  end
end
