class Room < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    # リレーション
    belongs_to :user
    has_many :room_registrations
    has_many :registrations, through: :room_registrations
end
