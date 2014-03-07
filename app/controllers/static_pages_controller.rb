class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: :token
  
  def index
    
    
    # if user_signed_in？:
      @title = "所有的Apps"
    
      @user = current_user
      @apps = @user.apps.paginate(page: params[:page])
    
      render "index"

    # elsif      
    #   
    # end 
    
  end
  
  
  
  def home
  end

  def help
  end
  
  
  def about
  end
end
