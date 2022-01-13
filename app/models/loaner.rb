class Loaner < ApplicationRecord
    belongs_to :user
    validates :borrowed_amonunt, presence: true, numericality: { in: 1..200000 }
    # validates :borrowed_amonunt, numericality: { in: 18..65 }
    validates :duration, presence: true, numericality: { only_integer: true }
end
