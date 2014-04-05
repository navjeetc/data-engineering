class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :company_id

      t.timestamps
    end
  end
end
