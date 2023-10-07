# frozen_string_literal: true

require_relative "harpia/version"

module Harpia
  class << self
    attr_writer :log_text

    def config
      yield self
    end

    def log_text
      puts caller.last.methods
      puts __dir__
      puts __method__


      @log_text || "- #{Time.now.strftime("%d/%m/%Y, %H:%M:%S")} / #{caller.last}"
    end

    ##
    # - 07/10/2023, 19:55:49 / [`/harpia/demo.rb`](/home/natanjmai/Documents/harpia_2/harpia/demo.rb)
    def get_caller_file_name

    end

    def new_todo()
      File.open(self.todo_path, 'a') do
        |f| f.write log_text + "\n"
      end
    end

    private
      def todo_path
        "/home/natanjmai/Documents/harpia_2/harpia/TODO.md"
      end
  end
end
