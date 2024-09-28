require 'dotenv'
require 'net/http'
require 'json'
require 'yaml'

module Jekyll
  class SummaryGenerator < Jekyll::Generator
    safe true
    priority :lowest

    def generate(site)
      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      @api_key = ENV['OPENAI_API_KEY']
      @site = site
      
      process_doc_folder
    end

    private

    def process_doc_folder
      doc_folder = File.join(@site.source, '_doc')
      Dir.glob(File.join(doc_folder, '**', '*.md')).each do |file|
        content = File.read(file)
        front_matter, markdown_content = extract_front_matter_and_content(content)
        
        if front_matter['summary'] == true
          summary = generate_summary(markdown_content)
          front_matter['summary'] = summary
          File.write(file, YAML.dump(front_matter) + "---\n" + markdown_content)
        end
      end
    end

    def extract_front_matter_and_content(content)
      if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
        front_matter = YAML.safe_load($1)
        content_without_front_matter = content.sub(/\A---\s*\n.*?\n?---\s*$\n?/m, '')
        [front_matter, content_without_front_matter]
      else
        [{}, content]
      end
    end

    def generate_summary(content)
      return "API key not set" if @api_key.nil? || @api_key.empty?

      uri = URI('https://api.openai.com/v1/chat/completions')
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(uri.path, {
        'Content-Type' => "application/json",
        'Authorization' => "Bearer #{@api_key}"
      })

      request.body = {
        model: "gpt-3.5-turbo",
        messages: [
          { role: "user", content: "다음 텍스트를 3줄 정도로 서머리해줘:\n\n#{content}" }
        ],
        max_tokens: 150
      }.to_json

      response = http.request(request)
      
      puts "Response Code: #{response.code}" 
      puts "Response Body: #{response.body}" 

      if response.is_a?(Net::HTTPSuccess)
        JSON.parse(response.body)['choices'][0]['message']['content'].strip
      else
        "Error: Unable to generate summary"
      end
    rescue => e
      "Error: #{e.message}"
    end
  end
end