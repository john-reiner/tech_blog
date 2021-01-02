class AddMainPicToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :main_pic, :text
  end
end
