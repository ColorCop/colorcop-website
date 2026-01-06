# frozen_string_literal: true

require 'html-proofer'
require 'jekyll'
require 'rubocop/rake_task'

# add the rubocop rake task, which is called by the lint task
RuboCop::RakeTask.new

desc 'build the Jekyll project'
task :build do
  config = Jekyll.configuration
  site = Jekyll::Site.new(config)
  Jekyll::Commands::Build.build(site, config)
end

desc 'serve the Jekyll project with live reload'
task :serve do
  config = Jekyll.configuration(
    'watch' => true,
    'serving' => true,
    'port' => 4000,
    'host' => '127.0.0.1'
  )

  Jekyll::Commands::Serve.process(config)
end

desc 'run playwright tests'
task :test do
  sh 'npx playwright test'
end

desc 'run linters'
task lint: :build do
  # Ruby code linter
  Rake::Task['rubocop'].execute

  # Terraform lint
  sh 'tflint --init'
  sh 'tflint --chdir terraform/website/ -c ../../.tflint.hcl'

  # HTML linting
  options = {
    check_html: true,
    check_external_hash: true
  }

  HTMLProofer.check_directory('./_site', options).run
end

task default: %i[test lint]
