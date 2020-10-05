class Student
  attr_accessor :name, :grade
  attr_reader :id
  
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  
  def self
    
  end
  
  
  def self.create_table(name, grade)
    
    
  end
  
  
  def self.drop_table
    
  end


  def save
    
  end
  
  
  def self.create
    
    
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
