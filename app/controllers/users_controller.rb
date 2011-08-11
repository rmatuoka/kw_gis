class UsersController < ApplicationController
  before_filter :simple_auth
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to managers_path, :notice => "Successfully created user."
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to managers_path, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end
end
