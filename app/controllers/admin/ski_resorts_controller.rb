class Admin::SkiResortsController < ApplicationController
  def index
    @ski_resorts = SkiResort.all
  end

  def new
  end

  def show
  end

  def edit
  end
  
  private
  
  def ski_resort_params
  
end
