class CreateSecretSanta < ActiveRecord::Migration[6.0]
  def change
    create_table :secret_santas do |t|
      t.references :santa, index: true, foreign_key: {to_table: :users}
      t.references :recipient, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
