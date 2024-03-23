# frozen_string_literal: true

require 'html-proofer'
require 'jekyll'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: [:test]

desc 'build Jekyll site and run HTML proofer on the output'
task :test do
  config = Jekyll.configuration({
                                  'source' => './',
                                  'destination' => './_site'
                                })
  site = Jekyll::Site.new(config)
  # build the jekyll project
  Jekyll::Commands::Build.build site, config

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

task default: [:test]
