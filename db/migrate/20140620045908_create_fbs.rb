class CreateFbs < ActiveRecord::Migration
  def change
    create_table :fbs do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
