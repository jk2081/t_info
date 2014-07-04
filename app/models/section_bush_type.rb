class SectionBushType < ActiveRecord::Base
  belongs_to :section
  belongs_to :bush_type
end
