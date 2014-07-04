class Section < ActiveRecord::Base
  belongs_to :garden
  has_many :section_yield_categories
end
