# frozen_string_literal: true

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    beginning = @line.index(':')
    @line.slice(beginning + 1, @line.length - 1).strip
  end

  def log_level
    @line.slice(@line.index('[') + 1, @line.index(']') - 1).downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
