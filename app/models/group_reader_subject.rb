class GroupReaderSubject < ActiveRecord::Base
  belongs_to :group
  belongs_to :reader
  belongs_to :subject              

  attr_accessible :group, :reader, :subject, :minutes, :priority   
  attr_accessor :hours, :step_priority
  
                     
  after_initialize :setup_deep_values
  
  private 
   def setup_deep_values
     @hours = self.minutes / 80   
     @step_priority = priority * (rand(Cell::DEEP)+1)
   end
end
