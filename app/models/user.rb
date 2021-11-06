class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_many :matches_as_asker, class_name: "Match", foreign_key: :asker_id, dependent: :destroy
  has_many :matches_as_receiver, class_name: "Match", foreign_key: :receiver_id, dependent: :destroy
end
