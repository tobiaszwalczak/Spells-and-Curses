#!/usr/bin/ruby

require File.dirname(__FILE__) +"/loader.rb"

Game.start do
	State.set :Menu
	header = File.read("app/assets/images/header.ascii")
	clear

	puts Rainbow(header).white().bright() +"\n\n"
	puts "Type "+ cmd("help") +" to list what you can say"
	puts "Main menu: "+ cmd("continue") +" | "+ cmd("load game") +" | "+ cmd("new game") +"\n\n"
end