class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :week_num
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
