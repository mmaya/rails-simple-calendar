FactoryBot.define do
  factory :reminder do
    start_time { DateTime.now }
    end_time { DateTime.now + 2.hours}
    description { "Lorem ipsum dolor sit amet" }
    color { "#ffffff" }
  end
end

