require 'spec_helper'

describe Scene do

	before do
		@scene = Scene.new(name:"Une scene", narrative:"Un recit d'au moins une trentaine de caractere pour la validation...", period:"2 jours", chapter_id:1)
	end

	subject { @scene }

	it { should respond_to(:name) }
	it { should respond_to(:narrative) }
	it { should respond_to(:period) }
	it { should respond_to(:chapter_id) }

	it { should be_valid }

	describe "quand les champs ne sont pas presents" do

		describe "name" do
			before { @scene.name = nil }
			it { should_not be_valid } 
		end

		describe "narrative" do
			before { @scene.narrative = nil }
			it { should_not be_valid } 
		end

		# describe "period" do
		# 	before { @scene.period = nil }
		# 	it { should_not be_valid } 
		# end

		# describe "place" do
		# 	before { @scene.place = nil }
		# 	it { should_not be_valid } 
		# end

		# describe "chapter_id" do
		# 	before { @scene.chapter_id = nil }
		# 	it { should_not be_valid } 
		# end
	end
end
