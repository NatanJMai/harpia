require_relative 'lib/harpia'

def method
  puts '=' * 10
  puts Harpia.todo_path
  Harpia.new_todo("- #{__callee__} / #{Time.now} User logged in #{__FILE__ }")
end

method
method
method