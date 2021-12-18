class Reminder < ApplicationRecord
  validates :description, :start_time, :end_time, presence: {message: "Ooops, you need to provide a start time, a end time and a description" }
  validates :description, length: {  maximum: 30, too_long: "%{count} characters is the maximum allowed for descriptions" }
  validates :color, format: { with: /\A#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})\z/, message: "Not a valid color, please try again" }, allow_blank: true
  validates :start_time, numericality: { less_then: DateTime.current }
  validate :start_time_cannot_be_in_the_past,:end_time_cannot_be_before_start_time

  def start_time_cannot_be_in_the_past
    if start_time.present? && start_time.to_date < Date.today
      errors.add(:start_time, "can't be in the past")
    end
  end

  def end_time_cannot_be_before_start_time
    if start_time.present? && end_time.present? && end_time < start_time
      errors.add(:end_time, "can't be before start time")
    end
  end
end
