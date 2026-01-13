require 'yaml'

profile = YAML.load_file('_data/profile.yml')
education = YAML.load_file('_data/education.yml')
experience = YAML.load_file('_data/experience.yml')
skills = YAML.load_file('_data/skills.yml')

File.open('print.md', 'w') do |f|
  f.puts "# #{profile['name']}"
  f.puts profile['summary']
  f.puts "\n## Education"
  education.each do |e|
    f.puts "- **#{e['degree']}**, #{e['institution']} (#{e['year']})"
  end

  f.puts "\n## Experience"
  experience.each do |e|
    f.puts "- **#{e['role']}**, #{e['company']}"
  end

  f.puts "\n## Skills"
  skills.each { |s| f.puts "- #{s['name']}" }
end
