class GalleryController < ApplicationController
  def create
  @gallery = Gallery.new(gallery_params)

  respond_to do |format|
    if @gallery.save

      if params[:images]
        #===== The magic is here ;)
        params[:images].each { |image|
          @gallery.pictures.create(image: image)
        }
      end

      format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
      format.json { render json: @gallery, status: :created, location: @gallery }
    else
      format.html { render action: "new" }
      format.json { render json: @gallery.errors, status: :unprocessable_entity }
    end
  end
end

end
