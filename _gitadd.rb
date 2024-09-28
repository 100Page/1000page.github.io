#!/usr/bin/env ruby

require 'yaml'

def read_frontmatter(file_path)
  content = File.read(file_path)
  if content.start_with?("---\n")
    frontmatter = content.split("---\n", 3)[1]
    YAML.safe_load(frontmatter)
  else
    {}
  end
rescue
  {}
end

def process_file(file_path)
  frontmatter = read_frontmatter(file_path)
  
  if frontmatter['git_add'] == false
    puts "Skipped: #{file_path}"
    return
  end

  title = frontmatter['title'] || 'No title'
  system("git add \"#{file_path}\"")
  system("git commit -m \"#{title}\"")
  puts "Added and committed: #{file_path} with title: #{title}"
end

def process_directory(dir_path)
  Dir.glob(File.join(dir_path, '**', '*.md')).each do |file|
    process_file(file)
  end
end

if ARGV.empty?
  puts "Usage: ruby git-add.rb <file_path or directory_path>"
  exit 1
end

input_path = ARGV[0]

if File.directory?(input_path)
  process_directory(input_path)
elsif File.file?(input_path)
  process_file(input_path)
else
  puts "Error: Invalid path"
  exit 1
end