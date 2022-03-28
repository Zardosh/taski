class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "Cool Page"
  end

  def home
    @projects = Project.all
  end

  def error
  end
end
