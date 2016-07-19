require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'parallel'
require 'json'
require 'yard'
require 'report_builder'
load 'report_builder.rake'

Cucumber::Rake::Task.new(:run_features)
task :default => [:cucumber]

YARD::Rake::YardocTask.new(:yard) do |t|
  t.files = ['features/**/*.feature', 'features/**/*.rb']
end

Cucumber::Rake::Task.new(:cucumber) do |t|
end

task :parallel_cucumber do
  sh "bundle exec parallel_cucumber features/"
end
