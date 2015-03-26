class AddPrintToHashtag < ActiveRecord::Migration
  def change
    add_column :hashtags, :print, :boolean
  end
end
