module Jekyll
  class DirectoryGenerator < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      base_path = File.join(site.source, '_doc')
      items, total_files = generate_items(site, base_path, '')
      site.data['doc_items'] = items
      site.data['total_doc_files'] = total_files
    end

    private

    def generate_items(site, path, parent_path)
      items = []
      file_count = 0
      folder_order = nil

      Dir.foreach(path) do |entry|
        next if entry == '.' || entry == '..'

        full_path = File.join(path, entry)
        relative_path = File.join(parent_path, entry)

        if File.directory?(full_path)
          subitems, sub_file_count = generate_items(site, full_path, relative_path)
          file_count += sub_file_count

          index_file = subitems.find { |item| item['filename'] == 'index' }
          folder_order = index_file['order'] if index_file

          items << {
            'folder' => File.basename(entry),
            'url' => "/doc/#{relative_path}/index.md".gsub(/\/+/, '/'),
            'post_cnt' => sub_file_count,
            'posts' => sort_items(subitems),
            'order' => folder_order
          }
        else
          front_matter = Jekyll::MyUtils.extract_front_matter(full_path)
          parent_folder = File.basename(File.dirname(full_path))
          filename = File.basename(entry, '.md')
          file_count += 1
          url = "/doc/#{relative_path}".gsub(/\/+/, '/')

          items << {
            'folder' => parent_folder,
            'filename' => filename,
            'url' => url,
            'title' => front_matter['title'],
            'order' => front_matter['order'],
            'description' => front_matter['description'],
            'tags' => front_matter['tags'],
            'created_time' => front_matter['created_time'],
            'modified_time' => front_matter['modified_time'],
          }

          folder_order = front_matter['order'] if filename == 'index'
        end
      end

      [sort_items(items), file_count]
    end

    def sort_items(items)
      items.sort_by do |item|
        [
          item['post_cnt'] ? 0 : 1,
          item['order'] ? 0 : 1,
          item['order'] || item['folder'] || item['filename'] || '',
          item['filename'] == 'index' ? 0 : 1,
          item['filename'] || '',
        ]
      end
    end
  end
end