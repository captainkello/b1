class PagesController < ApplicationController
  def home
  @title = "HOME"
  end

  def about
  @title = "ABOUT"
  end

  def contact
  @title = "CONTACT"
  end

  def help
  @title = "HELP"
  end

end
