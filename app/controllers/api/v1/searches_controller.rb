class Api::V1::SearchesController < ApplicationController
  respond_to :json

  def show
    respond_with Search.find(params[:id])
  end

  def index
    respond_with Search.all
  end
end
