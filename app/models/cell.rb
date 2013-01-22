class Cell < ActiveRecord::Base
  belongs_to :group_reader_subject
  belongs_to :lesson
  belongs_to :classroom
    
  class << self
    def start  
      # prepare cells                                   
      Lessons.all.each do |lesson|
        cell = new(lesson: lesson) 
        @cells << cell
      end            

      #select all data 
      # minutes - most important subject for this group    
      #than reader has a priority
      grs = GroupReaderSubject.joins(:group, :reader, :subject).order('minutes desc, readers.ravity desc') 
    end      
    
    def take_next
      # if @cells       
    end    
  end #end class functions
end
