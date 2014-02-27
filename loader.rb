cur_dir = File.dirname(__FILE__)

require "rainbow"

require cur_dir +"/lib/Main.rb"
require cur_dir +"/lib/State.rb"
require cur_dir +"/lib/Game.rb"
require cur_dir +"/lib/Command.rb"

Dir[cur_dir +"/app/objects/*.rb"].each do |file|
	require file
end