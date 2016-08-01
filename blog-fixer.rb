require 'yaml'

d = 'blog/_posts_as_extracted'

Dir.entries(d).reject { |r| r =~ /^\./ }.each do |post|
  content = YAML.load_file "#{d}/#{post}"
  z = {}
  z['author'] = {}
  z['author']['name'] = content['author']['name']
  z['author']['slug'] = content['author']['slug']
  z['description'] = content['details']['description']

  File.open "blog/_posts/#{post}", 'w' do |f|
    f.write z.to_yaml
    f.write '---'
    f.write "\n\n"
    f.write content['details']['content']
  end
end
