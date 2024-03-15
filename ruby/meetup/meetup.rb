# frozen_string_literal: true

require 'date'

class Meetup
  SCHEDULE = %i[first second third fourth].freeze

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, descriptor)
    case descriptor
    when :last
      find_date_by_range(day, -7..-1)
    when :teenth
      find_date_by_range(day, 13..19)
    else
      week_index = SCHEDULE.index(descriptor)
      find_date_by_week(day, week_index + 1)
    end
  end

  def find_date_by_range(day, range)
    range.each do |i|
      date = Date.new(@year, @month, i)
      return date if date.send("#{day}?")
    end
  end

  def find_date_by_week(day, week_index)
    first = (week_index - 1) * 7 + 1
    last = week_index * 7
    find_date_by_range(day, (first..last))
  end
end
