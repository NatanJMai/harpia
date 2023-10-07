require_relative 'lib/harpia'

Harpia.config do |c|
  # c.log_text = 'test'
end

def method
  puts '=' * 10
  Harpia.new_todo()
end

def method_2
  Harpia.new_todo()
end

method
method_2
method
Harpia.new_todo