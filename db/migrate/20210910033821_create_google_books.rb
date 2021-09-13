class CreateGoogleBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :google_books do |t|
      t.string :preview_image_link
      t.string :buy_now_link

      t.timestamps
    end
  end
end
