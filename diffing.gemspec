Gem::Specification.new do |s|

  s.name          = 'diffing'
  s.version       = '0.0.0'
  s.authors       = [ '4urbanoff' ]
  s.email         = [ '4urbanoff@gmail.com' ]
  s.description   = 'Diff two strings'
  s.summary       = ''
  s.homepage      = ''
  s.license       = 'MIT'

  s.files         = Dir['lib/**/*', 'bin/**/*'] + ['LICENSE.txt', 'Rakefile', 'Gemfile', 'README.md']
  s.require_path  = 'lib'

  s.executables   = ['diffing']

  s.has_rdoc      = false

end
