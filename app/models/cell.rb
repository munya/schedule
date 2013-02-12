class Cell < ActiveRecord::Base   
  PRIORITY = [1, 10, 100]         
  DEEP = 2 #max value could be 9
  
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
      (0..1).each do |step|
        # step priority will be different every select
        grs = GroupReaderSubject.joins(:group, :reader, :subject).order('priority desc, minutes desc, readers.ravity desc').sort_by{|grs| -grs.step_priority}
      end
    end      
    
    def take_next
      # if @cells       
    end    
  end #end class functions
end
