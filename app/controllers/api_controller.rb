class ApiController < ApplicationController
  def index
    @rates = Rate.includes(:provider).all
    render json: @rates
  end
end
