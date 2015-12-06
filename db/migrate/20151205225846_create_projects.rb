class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
		t.string :title
		t.string :media_type
		t.string :youtube_id
		t.string :role
		t.text :description
      	t.timestamps null: false
    end
  end
end
