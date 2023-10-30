# frozen_string_literal: true

require_relative "harpia/version"

module Harpia
  class << self
    attr_writer :log_text

    def config
      yield self
    end

    def new_fixme(comments = nil)
      f = open_file
      f.write log_text('FIXME', comments)
    end

    def new_todo(comments = nil)
      f = open_file
      f.write log_text('TODO', comments)
    end

    private
      def todo_path
        "/home/natanjmai/Documents/harpia_2/harpia/TODO.md"
      end

      def file_location
        caller.last.gsub("`", "").gsub("'", "")
      end

      def open_file
        File.open(self.todo_path, 'a')
      end

      def log_text(action = '', comments = nil)
        path = file_location || ''

        str = @log_text || "* `#{action}` - #{Time.now.strftime("%d/%m/%Y, %H:%M:%S")} / #{path}\n"
        str << "_#{comments.to_s}_\n" unless comments.nil?
        str << "---" + "\n\n\r"
      end
  end
end
