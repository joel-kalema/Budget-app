class UnlocksController < ApplicationController
  def index
    redirect_to users_path if user_signed_in?
  end
end
