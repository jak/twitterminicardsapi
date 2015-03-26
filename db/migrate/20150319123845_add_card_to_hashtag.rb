class AddCardToHashtag < ActiveRecord::Migration
  def change
    add_reference :hashtags, :card, index: true
    add_foreign_key :hashtags, :cards
  end
end
