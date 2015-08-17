class Room < ActiveRecord::Base
  has_many :schedules

  #before_destroy :ensure_not_referenced_by_any_schedules

  private

  #def ensure_not_referenced_by_any_schedules
   # if :schedules.empty?
     # return true
   # else
    #  errors.add(:base, 'Room is refered in schedule')
     # return false
   # end
 # end
end
