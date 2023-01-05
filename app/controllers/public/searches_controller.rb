class Public::SearchesController < ApplicationController
    before_action :authenticate_member!

  def search
    @model = params[:model]
    @word = params[:word]
    @content = params[:content]
    if @model == 'prefecture'
      @resorts = Resort.page(params[:page]).per(8).search(params[:word], 'prefecture')
    else
      @resorts = Resort.page(params[:page]).per(8).search(params[:content], 'name')
    end
    @prefectures = Prefecture.all
  end
end
