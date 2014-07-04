class Section < ActiveRecord::Base
  belongs_to :garden
  has_many :section_yield_categories
  has_many :section_prune_types
end
