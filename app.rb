require 'sinatra'
require 'keen'
load 'config.rb'

get '/' do
  get_client

  case params[:a]
    when 'addEvent'
      @msg = Keen.publish("sign_ups", { :username => "lloyd", :referred_by => "harry", :age => 27 })
    when 'count'
      @msg = Keen.count("sign_ups")
    when 'average'
      @msg = Keen.average("sign_ups", :target_property => "age")
    when 'extraction'
      @msg = Keen.extraction("sign_ups")
  end

  erb :index
end


