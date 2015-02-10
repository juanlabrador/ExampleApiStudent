class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |s|
      s.string :name
      s.integer :age
    end
    #create_table :teachers do |t|
      #t.string :name
    #end
  end

  def self.down
    drop_table :students
    #drop_table :teachers
  end
end

