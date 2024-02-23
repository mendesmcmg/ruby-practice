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
      last(day)
    when :teenth
      teenth(day)
    else
      week_index = SCHEDULE.index(descriptor)
      find_date_by_week(day, week_index + 1)
    end
  end

  def teenth(day)
    (13..19).each do |i|
      date = Date.new(@year, @month, i)
      return date if date.send("#{day}?")
    end
  end

  def find_date_by_week(day, week_index)
    first = (week_index - 1) * 7 + 1
    last = week_index * 7

    (first..last).each do |i|
      date = Date.new(@year, @month, i)
      return date if date.send("#{day}?")
    end
  end

  def last(day)
    date = Date.new(@year, @month, -1)
    date -= 1 until date.send("#{day}?")
    date
  end
end
