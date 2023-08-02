class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show edit update destroy ]

  # GET /photos
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
    @category = Category.find(params[:category_id])
  end

  # GET /photos/1/edit
  def edit
    @category = Category.find(@photo.category_id)
  end

  # POST /photos
  def create
    @photo = Photo.new(photo_params)
    # por error del back
    category_id = photo_params[:category_id].to_i
    @category = Category.find(category_id)
   
    if @photo.save
      redirect_to @photo.category, notice: "Photo was successfully created."
    else
      render new_photo_path, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photos/1
  def update
    if @photo.update(photo_params)
      redirect_to @photo.category, notice: "Photo was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /photos/1
  def destroy
    @photo.destroy
    redirect_to @photo.category, notice: "Photo was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_params
      params.require(:photo).permit(:title, :description, :comments_count, :category_id, :image)
    end
end
