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
  
  
  def self.create_table
  end
  
  
  def self.drop_table
    sql = <<- SQL
      
      DB[:conn].execute(sql, self.name, self.grade)

    SQL
  end


  def save
    sql = <<-SQL
      INSERT INTO student (name, grade)
      VALUES (?, ?)
    SQL
    
    DB[:conn].execute(sql, self.name, self.grade)
    
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM student")[0][0]
  end
  
  
  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
