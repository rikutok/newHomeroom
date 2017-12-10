class StalkController < ApplicationController
  protect_from_forgery
  def index
    
  end
  
  def get_result
    puts "afjaifandifonaiofnofnioadsnfonfonfbnuofnuabguoabfouadf"
    @where1 = params['results1']
    @where2 = params['results2']
    puts "緯度は" + @where1
    puts "経度は" + @where2
    TestMailer.sender("ninja8rrrr@gmail.com", @where1, @where2).deliver
    redirect_to "/homerooms/"  
  end
end
