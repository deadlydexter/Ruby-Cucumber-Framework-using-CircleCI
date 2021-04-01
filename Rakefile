require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features

Cucumber::Rake::Task.new(:ui_features) do |t|
  t.profile = 'ui_tests'
end

task :test do
  ruby "test.rb"
end

task :ui_tests => :ui_features