# frozen_string_literal: true

RSpec.describe Harpia do
  describe 'TODO.md file' do
    it "create when does not exist" do
      expect(File.exist?(Harpia.todo_path)).to be false
    end

    it "create when exists" do
      Harpia.open_todo_file
      expect(File.exist?(Harpia.todo_path)).to eq true
    end
  end

  it "has a version number" do
    expect(Harpia::VERSION).not_to be nil
  end
end
