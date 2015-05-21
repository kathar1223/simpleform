class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
