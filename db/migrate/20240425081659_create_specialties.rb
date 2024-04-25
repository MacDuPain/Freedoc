class CreateSpecialties < ActiveRecord::Migration[7.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.belongs_to :doctor, index: true
      
      t.timestamps
    end
  end
end
