class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_to_user_as_santa, foreign_key: "santa_id", class_name: "SecretSanta"
  has_many :recipients, through: :user_to_user_as_santa, source: :recipient

  has_many :user_to_user_as_recipient, foreign_key: "recipient_id", class_name: "SecretSanta"
  has_many :secret_santas, through: :user_to_user_as_recipient, source: :santa
end
