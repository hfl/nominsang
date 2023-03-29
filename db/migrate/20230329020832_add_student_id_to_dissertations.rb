class AddStudentIdToDissertations < ActiveRecord::Migration[7.0]
  def change
    add_column :dissertations, :student_id, :string
    add_column :dissertations, :department, :string
    add_column :dissertations, :discipline, :string
    add_column :dissertations, :subject, :string
  end
end
