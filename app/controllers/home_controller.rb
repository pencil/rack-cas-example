class HomeController < ApplicationController
  def index
    @user = session[:cas]
  end
end
