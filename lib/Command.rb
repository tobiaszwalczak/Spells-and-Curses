class Command
	@@input = ""
	@@log   = []
	@@line  = "> "
	@@done  = false

	def self.set (cmd)
		self.done = false 
		@@input = cmd
	end

	def self.get () @@input end
	def self.log () @@log end

	def self.log= (cmd)
		unless cmd == "log"
			@@log.push(cmd)
		end
		self.done = true
	end

	def self.line () @@line end
	def self.line= (line) @@line = line end
	def self.done? () @@done end
	def self.done= (bool) @@done = bool end
end