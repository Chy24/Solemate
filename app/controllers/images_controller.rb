class ImagesController < ApplicationController
  before_action :set_shoe
  
    def create
      add_more_images(images_params[:images])
      flash[:error] = "Failed uploading images" unless @shoe.save
      redirect_back fallback_location: root_path
    end
  
    def destroy
      remove_image_at_index(params[:id].to_i)
      flash[:error] = "Failed deleting image" unless @shoe.save
      redirect_back fallback_location: root_path
    end

    private
  
    def set_shoe
      @shoe = Shoe.find(params[:shoe_id])
    end
  
    def add_more_images(new_images)
      images = @shoe.images # copy the old images 
      images += new_images # concat old images with new ones
      @shoe.images = images # assign back
    end

    def remove_image_at_index(index)
      remain_images = @shoe.images # copy the array
      deleted_image = remain_images.delete_at(index) # delete the target image
      deleted_image.try(:remove!) # delete image from S3
      @shoe.images = remain_images # re-assign back
      @shoe.remove_images! if remain_images.empty?
    end
  
    def images_params
      params.require(:shoe).permit({images: []}) # allow nested params as array
    end
end
