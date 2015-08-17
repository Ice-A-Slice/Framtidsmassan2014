class Contact < ActiveRecord::Base
  after_destroy :ensure_a_contact_remains

  private
  def ensure_a_contact_remains
    if Contact.count.zero?
      raise "Du kan inte ta bort den sista kontakten"
    end
  end
end
