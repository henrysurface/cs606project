class AdminsController < ApplicationController
  def new
    @admins = Admin.new
  end
=begin 
For Admin, we currently don't need index/edit/destroy methods.
  def index
    @admins = Admin.all
  end
=end
  
  def create
    @admins = Admin.new(admin_params)
    if @admins.save
      flash[:notice] = "Welcome to Career Closet Admin Interface! #{@admins.name}"
      redirect_to suits_path
    else
      render 'new'
    end
  end
=begin  
  def edit
      @admins = Admin.find(params[:id])
  end
  def update
      @admins= Admin.find(params[:id])
      if @admin.update(admin_params)
          flash[:notice] = "Your account was updated successfully"
          redirect_to suits_path
      else
          render 'edit'
      end
  end
  
  def show
      @admins = Admin.find(params[:id])
  end
=end
  
  private
  def admin_params
      params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end
  
end