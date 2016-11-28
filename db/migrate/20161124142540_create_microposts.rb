class CreateMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :microposts do |t|
      t.text :content
      # t.string :content
      # t.references :user, foreign_key: true

      t.timestamps
    end
    # add_foreign_key :microposts, :users
      add_index :microposts, [:id, :created_at]
  end
end
