class ScenesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def index
    @scenes = Scene.all
    # if params[:query].present?
    #   @scenes = Scene.where(title: ILIKE ?", "%#{params[:query]}%")
    # else
    #   @scenes = Scene.all
    # end
  end

  def show
    @scene = Scene.find(params[:id])
  end

  def new
    @scene = Scene.new
  end

  def edit
    @scene = Scene.find(params[:id])
  end

  def create
    @scene = Scene.create(scene_params)
    @scene.save
    redirect_to scenes_path(@scene)
  end

  def update
    @scene = Scene.find(params[:id])
    @scene.update(scene_params)

    redirect_to scene_path(@scene)
  end

  def destroy
    @scene = Scene.find(params[:id])
    @scene.destroy

    redirect_to root_path
  end

  private

  def scene_params
    params.require(:scene).permit(:title, :description)
  end

end
