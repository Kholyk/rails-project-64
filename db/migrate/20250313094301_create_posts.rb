# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :category, null: false, foreign_key: true
      t.bigint :creator, null: false
      t.string :title
      t.text :body

      t.timestamps
    end

    add_foreign_key :posts, :users, column: :creator, primary_key: :id
  end
end
