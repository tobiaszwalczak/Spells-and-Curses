#!/usr/bin/ruby

require File.dirname(__FILE__) +"/loader.rb"

Game.start do
	header = File.read("app/assets/images/header.ascii")
	clear

	say(Rainbow(header).white().bright() +"\n\n", :very_fast)
	puts "Type "+ cmd("help") +" to list what you can say"
	puts "Main menu: "+ cmd("continue") +" | "+ cmd("load game") +" | "+ cmd("new game") +"\n\n"
end