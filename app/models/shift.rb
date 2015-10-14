class Shift < ActiveRecord::Base
  belongs_to :user

  def self.make_random_data
    users = User.all
    dates = ('2015-07-01'..'2015-07-14')
    start_times = [11, 13, 15, 17, 19, 21]

    users.each do |user|
      dates.each do |date|
        start_time = start_times[rand(6)]

        rand(3).times do
          user.shifts.create(date: date, start_time: start_time)
          start_time += 2
        end
      end
    end
  end
end
