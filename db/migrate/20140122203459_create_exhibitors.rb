class CreateExhibitors < ActiveRecord::Migration
  def change
    create_table :exhibitors do |t|
      t.string :title
      t.references :category, index: true
      t.string :position
      t.string :link

      t.timestamps
    end
  end
end
