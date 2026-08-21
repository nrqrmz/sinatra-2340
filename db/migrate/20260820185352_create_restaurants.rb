class CreateRestaurants < ActiveRecord::Migration[8.1]
  def change
    create_table :restaurants do |t|
      t.string    :name
      t.string    :address
      t.timestamps # adds 2 columns, `created_at` and `updated_at`
    end
  end
end
