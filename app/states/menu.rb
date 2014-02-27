State.is :menu do
	input "continue" do
		#load latest save
	end

	input "load game" do
		#show saves
		#load selected save
	end

	input "new game" do
		State.set :game
	end
end