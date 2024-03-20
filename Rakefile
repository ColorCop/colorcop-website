# frozen_string_literal: true

require 'jekyll'

task :default => [:test]

desc "run something that resembles a test"
task :test do
  config = Jekyll.configuration({
    'source' => './',
    'destination' => './_site'
  })
  site = Jekyll::Site.new(config)
  # build the jekyll project and if that passes, assume success
  Jekyll::Commands::Build.build site, config
end

