class ContentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :conetnt_find, only: [:show, :edit, :update, :destroy]
  def index
    @contents = Content.all.order('created_at DESC')
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

  def show
    @comment = Comment.new
    @comments = @content.comments.includes(:user)
  end

  def edit
    return redirect_to root_path if current_user.id != @content.user_id
  end

  def update
    @content.update(content_params)
    if @content.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @content.user_id
      @content.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def content_params
    params.require(:content).permit(:restaurant, :genre_id, :city_id, :town_id, :price_id, images: []).merge(user_id: current_user.id)
  end

  def conetnt_find
    @content = Content.find(params[:id])
  end
end
