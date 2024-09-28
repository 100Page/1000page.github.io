#!/usr/bin/env ruby

require 'fileutils'

if ARGV.length != 1
  puts "Usage: ruby xxx.rb <folder_name>"
  exit 1
end

folder_name = ARGV[0]
folder_path = File.join(Dir.pwd, '_doc', folder_name)
file_path = File.join(folder_path, 'index.md')

FileUtils.mkdir_p(File.join(Dir.pwd, '_doc'))

if File.exist?(folder_path)
  puts "The folder '#{folder_path}' already exists."
  exit 1
end

FileUtils.mkdir_p(folder_path)

markdown_content = <<~MARKDOWN
---
order: 
title: 
description: 
tags:
- 
created_time: 
modified_time: 
---
MARKDOWN

File.open(file_path, 'w') do |file|
  file.write(markdown_content)
end

puts "Markdown created at #{file_path}"