#!/usr/bin/env ruby
#
require 'json'
require 'date'
require 'erb'

build = JSON.parse ARGF.read
steps = build.fetch("jobs").select { |job| !job['started_at'].nil? }

build_start_time = DateTime.parse(build.fetch('created_at')).to_time
steps = steps.sort_by { |job| job.fetch('started_at') }
template_file = File.join(File.expand_path(File.dirname(__FILE__)), 'build.html.erb')
template = ERB.new(File.read(template_file))

puts template.result(binding)


