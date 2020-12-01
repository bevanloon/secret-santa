class SecretSanta < ApplicationRecord
  self.table_name = "secret_santas"
  belongs_to :santa, foreign_key: "santa_id", class_name: "User"
  belongs_to :recipient, foreign_key: "recipient_id", class_name: "User"
end
