class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :role
      t.text :description
      t.integer :salary_range_min
      t.integer :salary_range_max

      t.timestamps
    end
  end
end
