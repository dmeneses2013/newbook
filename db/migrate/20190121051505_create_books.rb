class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :google_id
      t.string :title
      t.string :author
      t.string :category
      t.string :cover
      t.timestamps
    end
  end

end
