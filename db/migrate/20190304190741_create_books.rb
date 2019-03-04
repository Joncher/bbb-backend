class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.text :description
      t.string :isbn_10
      t.integer :page_count
      t.integer :average_review
      t.string :thumbnail
      t.string :info_link
      t.decimal :retail_price
      t.timestamps
    end
  end
end
