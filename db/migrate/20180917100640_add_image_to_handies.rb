class AddImageToHandies < ActiveRecord::Migration[5.1]
  def change
    add_attachment :handies, :image1
    add_attachment :handies, :image2
    add_attachment :handies, :image3
    add_attachment :handies, :image4
  end
end
