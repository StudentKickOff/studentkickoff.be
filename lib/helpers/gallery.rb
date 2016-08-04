module GalleryHelper
  def galleryimage
    items.find_all('/assets/images/gallery/*.{jpg,png}')
  end
end
