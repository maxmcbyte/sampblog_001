# BG - file was automatically created when I ran 
# rails generate controller Pages home about

# this created 2 different ACTIONS (methods) home and about
# also note that it create a directory named pages
# and created a controller for Pages

class PagesController < ApplicationController

  def home
  end

  def about
# BG ADD - this will not get to the page though
# render :text => 'Hello from PagesController - about'
  end

  def directions
  end

end



