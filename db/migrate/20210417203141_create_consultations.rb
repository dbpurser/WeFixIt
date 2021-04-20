class CreateConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :consultations do |t|
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
