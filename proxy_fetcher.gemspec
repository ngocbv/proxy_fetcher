$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'proxy_fetcher/version'

Gem::Specification.new do |gem|
  gem.name = 'proxy_fetcher'
  gem.version = ProxyFetcher.gem_version
  gem.summary = 'Ruby gem for dealing with proxy lists from different providers'
  gem.description = 'This gem can help your Ruby application to make HTTP(S) requests ' \
                    'using proxies by fetching and validating proxy lists from the different providers.'
  gem.authors = ['Nikita Bulai']
  gem.email = 'bulajnikita@gmail.com'
  gem.require_paths = ['lib']
  gem.bindir = 'bin'
  gem.files = `git ls-files`.split($RS) - %w[README.md .travis.yml .rubocop.yml]
  gem.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.homepage = 'http://github.com/nbulaj/proxy_fetcher'
  gem.license = 'MIT'
  gem.required_ruby_version = '>= 2.0.0'

  gem.add_runtime_dependency 'http', '~> 3.0'

  gem.add_development_dependency 'rake', '>= 12.0'
  gem.add_development_dependency 'rspec', '~> 3.5'
end
