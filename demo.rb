require_relative 'lib/harpia'

Harpia.config do |c|
  # c.log_text = 'test'
end

def method
  Harpia.new_todo('We need to do this.')
end

def method_2
  Harpia.new_fixme
  Harpia.new_fixme
  Harpia.new_fixme('fix me please')
end

method
method_2
method
Harpia.new_todo