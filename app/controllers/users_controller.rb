class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
    @prototypes = Prototype.includes(:user)
  end
end
