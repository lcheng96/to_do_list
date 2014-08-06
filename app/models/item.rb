class Item < ActiveRecord::Base
  validates :event, presence: true, length: {minimum: 5, maximum: 80}
  validates :time, presence: true, format: { with: /\A[0-9][0-9]:[0-9][0-9] *\z/,
    message: " is invalid. Please enter in numbers with the following format - ##:## (eg. 08:00)" }
  validates :description, presence: true, length: {minimum: 5, maximum: 140}
end
