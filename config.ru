require 'rubygems'
require 'bundler'
Bundler.setup

$LOAD_PATH << 'lib'

require 'hinman-static'

use Rack::Static, :urls => ['/css', '/docs', '/images'], :root => 'public'
use Rack::ETag
run HinmanStatic
