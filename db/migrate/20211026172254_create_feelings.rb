class CreateFeelings < ActiveRecord::Migration[6.1]
  def change
    create_table :feelings do |t|
      t.integer :feeler_id
      t.string :color
      t.string :text
      t.datetime :created_at
    end

  end
end
