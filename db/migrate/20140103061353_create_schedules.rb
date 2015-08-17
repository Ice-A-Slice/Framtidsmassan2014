class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :time
      t.references :exhibitor, index: true
      t.references :room, index: true

      t.timestamps
    end
  end
end
