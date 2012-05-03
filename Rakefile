require "rubygems"

require 'rspec/core'
require "rspec/core/rake_task"
require 'rubygems/package_task'

RSpec::Core::RakeTask.new do |t|
  t.pattern = "./**/*_spec.rb"
end

task :default => :spec

spec = Gem::Specification.load(Dir['*.gemspec'].first)
gem = Gem::PackageTask.new(spec)
gem.define

desc "Push gem to rubygems.org"
task :push => :gem do
  sh "gem push #{gem.package_dir}/#{gem.gem_file}"
end