class Reminder < ApplicationRecord
  validates :description, :start_time, :end_time, presence: {message: "Ooops, you need to provide a start time, a end time and a description" }
  validates :description, length: {  maximum: 30, too_long: "%{count} characters is the maximum allowed for descriptions" }
  validates :color, format: { with: /\A#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})\z/, message: "Not a valid color, please try again" }, allow_blank: true
  validate :start_time_cannot_be_in_the_past,:end_time_cannot_be_before_start_time, :cannot_exist_conflicting_reminders

  def as_json(options={})
    super(
      :except => [:id, :created_at, :updated_at]
    ).merge(formatted: "#{start_time.strftime('%H:%M')} - #{end_time.strftime('%H:%M')} #{description}")
  end
  
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

  def cannot_exist_conflicting_reminders
    if start_time.present? && end_time.present? 
      # To do: list de conflicts on the error message
      if Reminder.where(["end_time > ? and start_time < ? and end_time >= ?", DateTime.current.beginning_of_day, end_time, start_time]).exists?
        errors.add(:start_time, "conflicts with another reminder")
      end
    end  
  end
end
