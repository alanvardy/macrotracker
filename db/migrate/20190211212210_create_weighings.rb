class CreateWeighings < ActiveRecord::Migration[5.2]
  def change
    create_table :weighings do |t|
      t.decimal :weight
      t.datetime :day
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
