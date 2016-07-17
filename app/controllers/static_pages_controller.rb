
class StaticPagesController < ApplicationController

  # When visiting the URL /static_pages/home, Rails looks in the
  # the Static Pages Controller  and executes the code in home action
  # and then renders the view home.html.erb


  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def terms
  end

end
