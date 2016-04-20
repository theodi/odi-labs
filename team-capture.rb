#!/usr/bin/env ruby

require 'httparty'
require 'yaml'

people = YAML.load_file '_data/team-members.yml'

url = 'http://contentapi.theodi.org/with_tag.json?person=team'

data = (HTTParty.get url)['results']

people.each do |person|
  p = data.select { |d| d['slug'] == person }[0]
  x = {
    'name' => p['title'],
    'id' => p['slug'],
    'role' => p['details']['role'],
    'photo' => p['details']['image']['versions']['square'],
    'links' => {
      'twitter' => "//twitter.com/#{p['details']['twitter']}",
      'github' => "//github.com/#{p['details']['github']}"
    },
    'bio' => p['details']['description']
  }

  File.open "_team/#{p['slug']}.md", 'w' do |f|
    f.write x.to_yaml
    f.write '---'
  end
end
