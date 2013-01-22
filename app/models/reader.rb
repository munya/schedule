class Reader < ActiveRecord::Base     
  has_many :group_reader_subjects
  attr_accessible :name, :ravity
end
