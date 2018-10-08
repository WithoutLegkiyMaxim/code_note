class UsersController < ApplicationController
  def index
  end

  def destroy
    redirect_to action: "index"
  end
end
