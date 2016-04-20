#!/usr/bin/env ruby

require 'httparty'
require 'yaml'

base_url = 'http://contentapi.theodi.org/with_tag.json?article=news,blog&author='

authors = YAML.load_file '_data/team-members.yml'

authors.each do |author|
  url = "#{base_url}#{author}"
  content = HTTParty.get(url)['results']

  content.each do |blost|
    date = blost['created_at'].split('T')[0]
    filename = "blog/_posts/#{date}-#{blost['slug']}.md"

    unless blost['slug'].match(/week-notes/)
      File.open filename, 'w' do |f|
        f.write blost.to_yaml
        f.write '---'
      end
    end
  end
end
