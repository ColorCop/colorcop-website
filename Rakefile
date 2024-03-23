# frozen_string_literal: true

require 'html-proofer'
require 'jekyll'
require 'rubocop/rake_task'

# add rubocop rake task
RuboCop::RakeTask.new

desc 'build the Jekyll project'
task :build do
  config = Jekyll.configuration({
                                  'source' => './',
                                  'destination' => './_site'
                                })
  site = Jekyll::Site.new(config)
  Jekyll::Commands::Build.build site, config
end

desc 'run HTML proofer'
task :test do
  Rake::Task['build'].execute
  # ignore 400 status codes when the proofer follows twitter links
  options = { ignore_status_codes: [400] }
  HTMLProofer.check_directory('./_site', options).run
end

desc 'run linters'
task :lint do
  # Ruby lint
  Rake::Task['rubocop'].execute

  # Terraform lint
  sh 'tflint --init'
  sh 'tflint --chdir terraform/website/ -c ../../.tflint.hcl'
end

task default: %i[test lint]
