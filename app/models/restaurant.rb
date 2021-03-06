class Restaurant < ApplicationRecord
    has_many :favorites, dependent: :destroy
    belongs_to :user
    has_many :favorite_users, through: :favorites, source: :user
    mount_uploader :image, ImageUploader
end
