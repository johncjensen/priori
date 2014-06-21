class CreateCrunchbases < ActiveRecord::Migration
  def change
    create_table :crunchbases do |t|

      t.timestamps
    end
  end
end
