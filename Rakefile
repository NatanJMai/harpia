# frozen_string_literal: true
require 'rake'
require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-performance'
  task.requires << 'rubocop-rspec'
end

task default: :spec
