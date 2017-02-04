class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    #Parameters: {"id"=>"1"
    @photo= Photo.find_by({ :id => params[:id]})
    @photo_id = @photo.id
    @photo_source = @photo.source
    @photo_caption = @photo.caption
    render("photos/show.html.erb")
  end

  def new_form

    render("photos/new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.caption= params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("/photos/")
    #code
  end


  def destroy
    photo= Photo.find_by({ :id => params[:id]})
    photo.destroy
    redirect_to("/photos")

  end

  def edit_form
    @photo= Photo.find_by({ :id => params[:id]})


  end

  def update_row
    u = Photo.find_by({ :id => params[:id]})
    @photo= Photo.find_by({ :id => params[:id]})
    u.caption= params[:new_photo_caption]
    u.source = params[:new_photo_source]
    u.save
    redirect_to("/photos/#{@photo.id}")
  end


end
