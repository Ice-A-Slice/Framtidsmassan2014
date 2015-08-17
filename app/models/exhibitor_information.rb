class ExhibitorInformation < ActiveRecord::Base
  after_destroy :ensure_a_text_remains

  private
  def ensure_a_text_remains
    if ExhibitorInformation.count.zero?
      raise "Du kan inte ta bort den sista texten"
    end
  end
end
