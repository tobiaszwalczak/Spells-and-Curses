class Game
	def self.start (&block)
		begin
			block.call

			loop do
				print Command.line
				Command.set(gets.chomp)

				Dir[File.dirname(__FILE__) +"/../app/states/*.rb"].each do |file|
					load file
				end
			end
		rescue Interrupt => e
		  clear
		end
	end
end