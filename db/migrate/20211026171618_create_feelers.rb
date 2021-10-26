class CreateFeelers < ActiveRecord::Migration[6.1]
  def change
    create_table :feelers do |t|
      t.string :name
    end
  end


end
