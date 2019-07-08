class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.monetize :amount
      t.monetize :common_amount

      t.timestamps
    end
  end
end
