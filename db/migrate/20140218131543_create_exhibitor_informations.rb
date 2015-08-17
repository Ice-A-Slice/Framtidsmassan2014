class CreateExhibitorInformations < ActiveRecord::Migration
  def change
    create_table :exhibitor_informations do |t|
      t.string :header
      t.text :content

      t.timestamps
    end
  end
end
