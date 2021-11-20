class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_many :matches_as_asker, class_name: "Match", foreign_key: :asker_id, dependent: :destroy
  has_many :matches_as_receiver, class_name: "Match", foreign_key: :receiver_id, dependent: :destroy
  belongs_to :avatar, optional: true

  before_create do
    self.username = random_username
  end

  def random_username
    adjs = ["autumn", "hidden", "bitter", "misty", "silent", "empty", "dry", "dark", "crazy", "amazing"]
    nouns = ["waterfall", "river", "breeze", "moon", "rain", "wind", "sea", "morning", "Ronaldo"]

    [adjs.sample, nouns.sample].join('_')
  end
end
