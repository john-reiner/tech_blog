class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :body
      t.integer :technology_topic_id
      t.timestamps
    end
  end
end
