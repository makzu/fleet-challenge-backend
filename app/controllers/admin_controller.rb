class AdminController < ApplicationController
  def index
    @providers = Provider.includes(:rates).all
  end

  def update_rate
    rate = Rate.find(params[:id])
    # This is a major no-no in a production app! A real app would validate the
    # user sending the request and also make sure the params were valid
    rate.update_attributes(params[:rate].permit!)
    if rate.save
      # A real app would include success/failure feedback here
      redirect_to action: :index
    end
  end
end
