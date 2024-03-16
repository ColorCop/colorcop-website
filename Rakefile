# frozen_string_literal: true

require 'html-proofer'
require 'jekyll'

task default: [:test]

desc 'run something that resembles a test'
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

task default: [:test]
