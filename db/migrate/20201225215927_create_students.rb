class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :grade
      t.string :username
      t.string :password
      t.string :short_id
      t.string :long_id
      t.string :role

      t.timestamps
    end
  end
end
