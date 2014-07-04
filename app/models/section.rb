class Section < ActiveRecord::Base
  belongs_to :garden
  has_many :section_yield_categories
  has_many :section_prune_types
  has_many :section_bush_types
  has_many :section_divisions
  has_many :section_yields
  has_many :section_vacancies
end
