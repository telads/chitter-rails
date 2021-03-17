class CreatePeeps < ActiveRecord::Migration[6.1]
  def change
    create_table :peeps do |t|
      t.string :username
      t.text :peep

      t.timestamps


    end
  end
end
