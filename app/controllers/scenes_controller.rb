class ScenesController < ApplicationController
  def index
    @scenes = Scene.all
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

    redirect_to scenes_path
  end

  def update
    @scene = Scene.find(params[:id])
    @scene.update(scene_params)

    redirect_to scene_path(@scene)
  end

  def destroy
    @scene = Scene.find(params[:id])
    @scene.destroy

    redirect_to scenes_path
  end

  private

  def scene_params
    params.require(:scene).permit(:title, :description)
  end

end
