class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: :token
  
  def index
  end
  
  def home
  end

  def help
  end
  
  
  def about
  end
end
