require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-quickstart' do
	sender = params[:From]
	friends = {
		"+18477912621" => "Bane Srdjevic",
		"+12243929798" => "Ivan Srdjevic",
		"+12243929797" => "Nela Srdjevic",
		"+12247302261" => "Mama",
		"+18474819122" => "Tata"
	}
	name = friends[sender] || "Mobile Monkey"
	twiml = Twilio::TwiML::Response.new do |r|
		r.Message "Hello, #{name}. Thanks for the message."
	end
	twiml.text
end