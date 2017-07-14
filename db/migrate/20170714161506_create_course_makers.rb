class CreateCourseMakers < ActiveRecord::Migration[5.1]
  def change
    create_table :course_makers do |t|
      t.references :course, foreign_key: true
      t.integer :page_number
      t.string :page_heading
      t.text :page_content

      t.timestamps
    end
  end
end
