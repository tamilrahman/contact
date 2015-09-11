class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
