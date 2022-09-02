class MainController < ApplicationController

  def welcome
    @name = 'Diego Rojas'
    redirect_to contents_path
  end
end