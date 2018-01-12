require 'uri'
class HomeroomsController < ApplicationController
  # before_action :set_homeroom, only: [:show, :edit, :update, :destroy]
  protect_from_forgery

  # GET /homerooms
  # GET /homerooms.json
  def index
    # @homeroom = Homeroom.all
  end
  
  def show
    # @homeroom = Homeroom.all
  end
  
  def new_lesson
    @name = params['name']
    @sets = params['list']
    @mail_adress = params['mail']
    if @name.empty?
      @name = "匿名"
    end
    # @comments = params['comment']
    # @date = params['date']
    # x = Homeroom.new(:name => @name, :set => @sets, :mail => @mail_adress, :student => "true", :dating => @date, :comments => @comments);
    # x = Homeroom.new(:name => @name, :set => @sets, :mail => @mail_adress, :student => "true");
    # x.save
    TestMailer.sender(@mail_adress, @name, @sets).deliver
    redirect_to :action => "index"
  end

end

