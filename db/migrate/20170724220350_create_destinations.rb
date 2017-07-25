class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :image
      t.string :description
      t.references :tag    #This adds a foreign key pointing to the tags table.

      t.timestamps
    end
  end
end
