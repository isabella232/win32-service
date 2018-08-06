lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "win32/windows/version"

Gem::Specification.new do |spec|
  spec.name       = 'win32-service'
  spec.version    = Win32::Service::VERSION
  spec.authors    = ['Daniel J. Berger', 'Park Heesob']
  spec.license    = 'Artistic-2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/chef/win32-service'
  spec.summary    = 'An interface for MS Windows services'
  spec.test_files = Dir['test/test*.rb']

  spec.files = Dir['**/*'].reject{ |f| f.include?('git') }

  spec.extra_rdoc_files = [
    'CHANGELOG.md',
    'README.md',
    'MANIFEST',
    'doc/service.txt',
    'doc/daemon.txt'
  ]

  spec.add_dependency('ffi')
  spec.add_dependency('ffi-win32-extensions')

  spec.add_development_dependency('test-unit')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('win32-security')

  spec.description = <<-EOF
    The win32-service library provides a Ruby interface to services on
    MS Windows. You can create new services, or control, configure and
    inspect existing services.

    In addition, you can create a pure Ruby service by using the Daemon
    class that is included as part of the library.
  EOF
end
