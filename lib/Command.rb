class Command
	@@input     = ""
	@@log       = []
	@@line      = "> "

	def self.set (cmd)
		@@input = cmd
	end

	def self.get
		@@input
	end

	def self.log
		@@log
	end

	def self.log= (cmd)
		unless cmd == "log"
			@@log.push(cmd)
		end
	end

	def self.line
		@@line
	end

	def self.line= (line)
		@@line = line
	end
end