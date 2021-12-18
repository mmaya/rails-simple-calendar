class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  # GET /calender
  def index
    @reminders = Reminder.where('start_time >= ? and start_time <= ?', DateTime.current.change(day: 1), DateTime.current.end_of_month)
  end

  # GET /month_reminders
  def search_by_month
    @reminders = Reminder.where(start_time: params[:month])
  end
end