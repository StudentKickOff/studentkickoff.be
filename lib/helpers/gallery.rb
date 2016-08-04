module GalleryHelper
  def galleryimage
    items.find_all('/assets/images/gallery/*')
  end
end
