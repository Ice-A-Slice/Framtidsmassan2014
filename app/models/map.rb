class Map < ActiveRecord::Base
  mount_uploader :image, MapLoaderUploader

  after_destroy :ensure_a_map_remains

  validates :image, allow_blank: true, format: {
      with:     %r{\.(gif|jpeg|jpg|png)}i,
      message:  'must be a URL for GIF, JPG or PNG image.'
  }



  private
  def ensure_a_map_remains
    if Map.count.zero?
      raise "Du kan inte ta bort den sista kartan"
    end
  end

end
