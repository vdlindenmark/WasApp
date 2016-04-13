class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :type
      t.integer :machine_id

      t.timestamps null: false
    end
  end
end
