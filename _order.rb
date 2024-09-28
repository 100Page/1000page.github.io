require 'yaml'

order_mapping = {}

Dir.glob('_doc/*/index.md') do |file|
  content = File.read(file)
  yaml_block = content.split(/^---$/)

  if yaml_block.size >= 3
    yaml_content = yaml_block[1].strip
    data = YAML.load(yaml_content)

    folder_name = File.dirname(file).gsub('_doc/', '')
    order_value = data['order']

    order_mapping[folder_name] = order_value
  end
end

File.open('_order.txt', 'w') do |f|
  order_mapping.each do |key, value|
    f.puts "#{key}:#{value}"
  end
end

puts "order.txt 파일이 생성되었습니다."
