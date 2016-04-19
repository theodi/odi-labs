#!/usr/bin/env ruby

require 'httparty'

base_url = 'http://contentapi.theodi.org/with_tag.json?article=news,blog&author='

authors = [
  'stuart-harrison',
  'sam-pikesley',
  'james-smith',
  'tom-heath',
  'ulrich-atz'
]

authors.each do |author|
  url = "#{base_url}#{author}"
  content = HTTParty.get(url)['results']

  content.each do |blost|
    date = blost['created_at'].split('T')[0]
    filename = "blog/_posts/#{date}-#{blost['slug']}.md"

    File.open filename, 'w' do |f|
      f.write blost.to_yaml
      f.write '---'
    end
  end
end
