class Loaner < ApplicationRecord
    require 'humanize'
    before_save :set_duration
    before_save :set_amt_words
    belongs_to :user
    validates :amount, presence: true, numericality: { in: 50000..200000 }
    validates :start_date, presence: true
    validates :end_date, presence: true
    def set_duration
        self.duration = (start_date.jd..end_date.jd).count
    end

    def set_amt_words
        self.amt_words = amount.humanize.titleize + " Naira Only"
    end
end
