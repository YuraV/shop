class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :iso
      t.decimal :rate, :precision => 5, :scale => 2, :default => 0.00

      t.timestamps
    end
  end
end
