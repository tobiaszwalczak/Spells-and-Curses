class Game
  def self.start (&block)
    begin
      block.call

      loop do
        print Command.line
        Command.set(gets.chomp)

        Dir[File.dirname(__FILE__) +"/../app/states/*.rb"].each do |path|
          classname = File.basename(path, ".*")

          if State.get.to_s == classname || classname == "All"
            load path
          end
        end
      end
    rescue Interrupt => e
      clear
    end
  end
end