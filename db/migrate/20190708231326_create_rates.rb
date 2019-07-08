class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.monetize :amount
      t.monetize :common_amount
      t.string :origin
      t.string :destination
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
