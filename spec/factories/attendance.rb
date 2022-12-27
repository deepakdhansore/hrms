FactoryBot.define do
    factory :attendance, class: Attendance do
      time_in {Timezone.parse("9:30 AM")}
      time_out {Timezone.parse("7:30 PM")}
      date {Date.parse("12-01-2022")}
    end
end
