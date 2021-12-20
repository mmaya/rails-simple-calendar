class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  # GET /
  def index
    start_date = if reminder_params[:start_date] then reminder_params[:start_date].to_date.change(day: 1) else DateTime.current.change(day: 1) end
    end_date = if params[:start_date] then reminder_params[:start_date].to_date.end_of_month else DateTime.current.end_of_month end
    @reminders = Reminder.where('start_time >= ? and start_time <= ?', start_date, end_date).order(:start_time).group_by { |reminder| reminder.start_time.to_date }
    @reminder = Reminder.new
  end

  # GET /reminders/1
  def show
  end

  # GET /reminders/new
  def new
    @reminder = Reminder.new
  end

  # GET /reminders/1/edit
  def edit
  end

  # POST /reminders
  def create
    @reminders = Reminder.all.group_by { |reminder| reminder.start_time.to_date }
    @reminder = Reminder.new(reminder_params[:reminder])
  
    respond_to do |format|
      if @reminder.save
        format.html { redirect_to request.referrer, notice: "User was successfully WHATEVER." }
      else
        format.html {	render :index }
      end
    end
  end

  # PATCH/PUT /reminders/1
  def update
    respond_to do |format|
      if @reminder.update(reminder_params[:reminder])
        format.html { redirect_to @reminder, notice: 'Reminder was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /reminders/1
  def destroy
    @reminder.destroy
    respond_to do |format|
      format.html { redirect_to reminders_url, notice: 'Reminder was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reminder
    @reminder = Reminder.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def reminder_params
    params.permit!
  end
end