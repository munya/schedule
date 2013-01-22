class GroupReaderSubject < ActiveRecord::Base
  belongs_to :group
  belongs_to :reader
  belongs_to :subject              

  attr_accessible :group, :reader, :subject, :minutes   
  attr_accessor :hours
                     
  after_initialize do
    hours = minutes / 80    
  end

end
