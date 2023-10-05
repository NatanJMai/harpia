# frozen_string_literal: true

require_relative "harpia/version"

module Harpia
  class << self
    def config
      yield self
    end

    def todo_path
      "/home/natanjmai/Documents/harpia_2/harpia/TODO.md"
    end

    def open_todo_file
      File.open(self.todo_path, 'a') do
        |f| f.write "- #{Time.now} User logged in\n"
      end
    end
  end
end
