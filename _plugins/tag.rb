module Jekyll
  class TagDataGenerator < Generator
    safe true
    priority :low

    def generate(site)
      tag_data = {}

      process_directory(site, '_doc', tag_data)

      tag_data.each do |tag, docs|
        tag_data[tag] = {
          'title' => tag,
          'docs' => docs
        }
      end

      site.data['tags'] = tag_data
    end

    def process_directory(site, dir, tag_data)
      Dir.foreach(File.join(site.source, dir)) do |item|
        next if item == '.' or item == '..'
        item_path = File.join(dir, item)
        if File.directory?(File.join(site.source, item_path))
          process_directory(site, item_path, tag_data)
        else
          process_file(site, item_path, tag_data)
        end
      end
    end

    def process_file(site, file_path, tag_data)
      if file_path =~ /\.(md|markdown)$/i
        content = File.read(File.join(site.source, file_path))
        if content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
          front_matter = YAML.load($1)
          if front_matter['tags']
            doc = {
              'url' => file_path.sub(/^_doc/, '/doc'),
              'title' => front_matter['title'],
              'description' => front_matter['description'],
              'modified_time' => front_matter['modified_time'],
            }
            front_matter['tags'].each do |tag|
              tag_data[tag] ||= []
              tag_data[tag] << doc
            end
          end
        end
      end
    end
    
  end
end