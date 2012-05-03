Gem::Specification.new do |s|
  s.name    = 'rack-havoc'
  s.version = '0.0.1'
  s.summary = 'Wreak havoc with your Rack app'

  s.author   = 'Travis Truman'
  s.email    = 'trumant@gmail.com'
  s.homepage = 'https://github.com/trumant/rack-havoc'

  s.add_development_dependency 'rspec', '2.9'
  s.add_development_dependency 'rack-test', '0.6.1'

  # Include everything in the lib folder
  s.files = Dir['lib/**/*']
  
  s.test_files  = Dir.glob("spec/**/*.rb")

  # Supress the warning about no rubyforge project
  s.rubyforge_project = 'nowarning'
end