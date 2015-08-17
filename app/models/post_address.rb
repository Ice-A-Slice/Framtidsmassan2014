class PostAddress < ActiveRecord::Base
  after_destroy :ensure_an_address_remains

  private
  def ensure_an_address_remains
    if PostAddress.count.zero?
      raise "Du kan inte ta bort den sista adressen"
    end
  end
end

