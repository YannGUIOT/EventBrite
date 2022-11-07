class User < ApplicationRecord

    validates :email, presence: true, uniqueness: true,
              format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates :first_name, presence: true
    validates :last_name, presence: true

    has_many :attendances
    has_many :events, through: :attendances
    has_many :admin_events, foreign_key: "event_admin_id", class_name: "Event", dependent: :destroy

end
