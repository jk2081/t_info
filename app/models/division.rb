class Division < ActiveRecord::Base
  belongs_to :garden
  has_many :section_divisions
end
