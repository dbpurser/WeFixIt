class CreateRepairs < ActiveRecord::Migration[6.1]
  def change
    create_table :repairs do |t|
      t.string :status
      t.boolean :completed
      t.string :specialist

      t.timestamps
    end
  end
end
