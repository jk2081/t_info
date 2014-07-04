class SectionPruneType < ActiveRecord::Base
  belongs_to :section
  belongs_to :prune_type
end
