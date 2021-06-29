class DriversController < ApplicationController
  def index
    driver = params[:driver]
    if driver.nil?
      flash[:danger] = 'No driver found by that name, please try again'
    else
      @output = Driver.service.get_driver_search(driver)
    end
  end
end
