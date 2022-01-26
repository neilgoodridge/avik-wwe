class ScenesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :find_scene, only: [:show, :edit, :update, :destroy]
  def index
    @scenes = Scene.all
  end

  def show
  end

  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.create(scene_params)
    @scene.save
    redirect_to scenes_path(@scene)
  end

  def edit
  end

  def update
    @scene.update(scene_params)
    redirect_to scene_path(@scene)
  end

  def destroy
    @scene.destroy
    redirect_to root_path
  end

  private

  def scene_params
    params.require(:scene).permit(:title, :description)
  end

  def find_scene
    @scene = Scene.find(params[:id])
  end
end
