class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
    	t.string :name
    	t.string :description
    	t.string :image
    end
  end
end
