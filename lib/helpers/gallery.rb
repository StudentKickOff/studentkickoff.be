module GalleryHelper
  def galleryimage
    items.find_all('/assets/gallery/*')
  end
end
