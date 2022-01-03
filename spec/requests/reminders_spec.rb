require 'rails_helper'

RSpec.describe "/reminders", type: :request do
  
  let(:valid_attributes) {
    {
      description: "Lorem ipsum dolor sit amet con",
      start_time: DateTime.current,
      end_time: DateTime.current + 1.hour,
      color: "#000000",
    }
  }

  let(:invalid_attributes) {
    {
      description: "This is a too long description for a reminder and it will fail validation",
      start_time: DateTime.current,
      end_time: DateTime.current + 1.hour,
      color: "#FFFFFF",
    }
  }

  describe "GET /index" do

    it "renders a successful response" do
      FactoryBot.build_stubbed(:reminder, valid_attributes)
      get reminders_url, as: :html
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      reminder = Reminder.create! valid_attributes
      get reminder_url(reminder), as: :html
      expect(response).to be_successful
    end
  end
  
  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Reminder" do
        expect {
          post reminders_url,
            params: { reminder: valid_attributes }, as: :html
        }.to change(Reminder, :count).by(1)
      end
    end
  

    context "with invalid parameters" do
      it "does not create a new Reminder" do
        expect {
          post reminders_url,
               params: { reminder: invalid_attributes }, as: :html
        }.to change(Reminder, :count).by(0)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_valid_attributes) {
        {
          description: "Study english",
          start_time: DateTime.current,
          end_time: DateTime.current + 1.hour,
          color: "#000000",
        }
      }

      it "updates the requested reminder" do
        reminder = Reminder.create! valid_attributes
        patch reminder_url(reminder),
              params: { reminder: new_valid_attributes }, as: :html
        reminder.reload
        expect(reminder.attributes).to include( { "description" => "Study english" } )
      end
    end

    context "with invalid parameters" do
      it "doesn't update the reminder" do
        reminder = Reminder.create! valid_attributes
        patch reminder_url(reminder),
              params: { reminder: {description: ""} }, as: :html
        reminder.reload
        expect(reminder.attributes).to_not include( { "description" => "" } )
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested reminder" do
      reminder = Reminder.create! valid_attributes
      expect {
        delete reminder_url(reminder), as: :html
      }.to change(Reminder, :count).by(-1)
    end
  end
end
