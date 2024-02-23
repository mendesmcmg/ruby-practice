# frozen_string_literal: true

require 'date'

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day, descriptor)
    case descriptor
    when :first
      first_to_fourth_interval(day, 1)
    when :second
      first_to_fourth_interval(day, 2)
    when :third
      first_to_fourth_interval(day, 3)
    when :fourth
      first_to_fourth_interval(day, 4)
    when :last
      last(day)
    when :teenth
      teenth(day)
    end
  end

  def teenth(day)
    (13..19).each do |i|
      date = Date.new(@year, @month, i)
      return date if date.send("#{day}?")
    end
  end

  def first_to_fourth_interval(day, descriptor)
    first = (descriptor - 1) * 7 + 1
    last = descriptor * 7

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
