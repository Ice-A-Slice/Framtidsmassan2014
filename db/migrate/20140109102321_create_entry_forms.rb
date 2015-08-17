class CreateEntryForms < ActiveRecord::Migration
  def change
    create_table :entry_forms do |t|
      t.string :contact
      t.string :organization
      t.string :telephone
      t.string :email
      t.string :food_amount
      t.text :food_other
      t.string :electricity
      t.string :internet
      t.string :seminar

      t.timestamps
    end
  end
end
