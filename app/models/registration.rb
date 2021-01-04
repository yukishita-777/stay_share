class Registration < ApplicationRecord
    # リレーション
    belongs_to :user
    has_many :room_registrations
    has_many :rooms, through: :room_registrations
end
