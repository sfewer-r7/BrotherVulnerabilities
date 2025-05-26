# gem install sinatra
# gem install rackup
# ruby sinatra_server.rb -o 0.0.0.0 -p 4444
#
# https://sinatrarb.com/intro.html
require 'sinatra'

get '/hax' do
	$stdout.puts("######### HAX-BEGIN #########")
	params.each do |k,v|
		$stdout.puts("    key=#{k}, value=#{v}")
	end
	$stdout.puts("    request.body=#{request.body.read}")
	$stdout.puts("    request.ip=#{request.ip}")
	$stdout.puts("######### HAX-END #########")
end