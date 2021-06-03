class CreateJobAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :job_areas do |t|
      t.string :name
      t.timestamps
    end
  end
end
