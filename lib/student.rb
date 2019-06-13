class Student
  attr_accessor :id, :name, :grade
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
      );
      SQL
      DB[:conn].execute(sql)
  end
  
end
