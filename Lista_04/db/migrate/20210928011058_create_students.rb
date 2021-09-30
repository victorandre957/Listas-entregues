class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :registration
      t.string :email
      t.date :birth_date
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
