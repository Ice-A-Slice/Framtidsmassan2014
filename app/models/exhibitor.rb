class Exhibitor < ActiveRecord::Base
  belongs_to :category





  validates :title, :link, :category_id, :position,   presence: true
  validates :title, uniqueness: true
  validates :title, length: { minimum: 2 }


end
