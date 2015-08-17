class CreatePostAddresses < ActiveRecord::Migration
  def change
    create_table :post_addresses do |t|
      t.string :municipality
      t.string :company
      t.string :address
      t.string :post_number_and_city

      t.timestamps
    end
  end
end
