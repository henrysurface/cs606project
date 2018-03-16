class Suit < ActiveRecord::Base
    belongs_to :user
    validates :appid, presence: true
    validates :size, presence: true
    validates :gender, presence: true
end