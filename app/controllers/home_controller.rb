class HomeController < ApplicationController

  def index
    @drivers = CurrentDriver.all
  end
end
