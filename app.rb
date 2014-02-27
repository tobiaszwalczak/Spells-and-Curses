#!/usr/bin/ruby

require File.dirname(__FILE__) +"/loader.rb"

Game.start do
	header = File.read("app/assets/images/header.ascii")
	clear

	puts Rainbow(header).white().bright() +"\n\n"
	puts "Main menu: [continue] [load game] [new game]"
end