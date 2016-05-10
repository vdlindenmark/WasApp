class CreateTijds < ActiveRecord::Migration
  def change
    create_table :tijds do |t|
      t.string :end_datetime
      t.integer :machine_id

      t.timestamps null: false
    end
  end
end
