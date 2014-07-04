class Garden < ActiveRecord::Base
  belongs_to :garden_group
  has_many :divisions
  has_many :sections
end
