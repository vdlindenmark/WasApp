class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :kind
      t.string :name
    end
  end
end
