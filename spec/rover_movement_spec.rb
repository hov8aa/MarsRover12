require_relative '../rover_movement'

RSpec.describe "Rover Movement Specifications"do
    context "to verify if the rover is functional " do
        it("should find out if the rover moved left with left command") do
            expect(turn_rover_left('N')).to eq('W')
        end

        it("should find out if the rover moved right with right command") do
            expect(turn_rover_right('N')).to eq('E')
        end

    end



end