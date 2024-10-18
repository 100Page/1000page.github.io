require 'dotenv'
require 'listen'

module Jekyll
  class SearchJsonGenerator < Jekyll::Generator
    safe true
    priority :lowest

    def generate(site)
      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      items = site.data['doc_items']
      output_path = File.join('assets', 'data', 'doc_items.json')

      if ENV['JEKYLL_ENV'] == 'local'
        generate_file(items, output_path)
        #start_listener(site, output_path)
      end
    end

    private

    def generate_file(items, output_path)
      FileUtils.mkdir_p(File.dirname(output_path))
      File.write(output_path, JSON.generate(items))
      puts "doc_items.json generated"
    end

    def start_listener(site, output_path)
      listener = Listen.to('_doc', only: /\.(md|markdown)$/, latency: 120) do |modified, added, removed|
        items = site.data['doc_items']
        generate_file(items, output_path)
      end

      listener.start
    end

  end
end