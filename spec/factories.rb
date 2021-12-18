FactoryBot.define do
  factory :reminder do
    start_time { DateTime.current }
    end_time { DateTime.current + 2.hours}
    description { "Lorem ipsum dolor sit amet" }
    color { "#ffffff" }
  end
end

