# frozen_string_literal: true

require 'html/proofer'

task :test do
  sh 'bundle exec jekyll build'
  HTML::Proofer.new('./_site').run
end
