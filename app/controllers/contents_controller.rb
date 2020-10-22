class ContentsController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  def index
    @content = Content.all.order("created_at DESC")
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def content_params
    params.require(:content).permit(:image,:restaurant,:genre_id,:city_id,:town_id,:price_id).merge(user_id: current_user.id)
  end
end
