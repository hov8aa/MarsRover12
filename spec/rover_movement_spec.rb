require_relative '../rover_movement'

RSpec.describe "Rover Movement Specifications"do
    context "to verify if the rover is functional " do
        it("should find out the new direction of the face of the rover, after terning left") do
            expect(turn_rover_left('N')).to eq('W')
        end

        it("should find out the new direction of the face of the rover, after terning right") do
            expect(turn_rover_right('N')).to eq('E')
        end

        it("should find out the new rover position after moving one step forward") do
            expect(move_rover_forward('x','y')).to eq('x,y+1')
        end
    end
end