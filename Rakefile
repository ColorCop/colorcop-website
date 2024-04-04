# frozen_string_literal: true

require 'html-proofer'
require 'jekyll'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-rspec'
end

RSpec::Core::RakeTask.new(:spec)

desc 'build the Jekyll project'
task :build do
  config = Jekyll.configuration
  site = Jekyll::Site.new(config)
  Jekyll::Commands::Build.build(site, config)
end

desc 'run linters'
task lint: :build do
  # Ruby lint
  Rake::Task['rubocop'].execute

  # Terraform lint
  sh 'tflint --init'
  sh 'tflint --chdir terraform/website/ -c ../../.tflint.hcl'

  # HTML linting
  options = { ignore_status_codes: [400] }
  HTMLProofer.check_directory('./_site', options).run
end

task default: %i[spec lint]
