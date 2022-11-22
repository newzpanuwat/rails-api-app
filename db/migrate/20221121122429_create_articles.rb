class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.string :posted_by

      t.timestamps
    end
  end
end
