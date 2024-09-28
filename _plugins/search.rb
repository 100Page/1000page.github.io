module Jekyll
  class SearchGenerator < Jekyll::Generator
    safe true
    priority :lowest

    @@already_run = false 

    def generate(site)
      return if @@already_run 

      original_items = site.data['doc_items'].dup

      items = site.data['doc_items']
      output_path = File.join('assets', 'data', 'doc_items.json')

      if File.exist?(output_path)
        File.delete(output_path)
      end

      FileUtils.mkdir_p(File.dirname(output_path))
      File.write(output_path, JSON.pretty_generate(items))

      site.data['doc_items'] = original_items
      @@already_run = true
      
    end

  end
end