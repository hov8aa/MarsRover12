require_relative '../rover_movement'

RSpec.describe "Rover Movement Specifications"do
    context "to verify if the rover is functional " do
        it("should validate the new direction of the face of the rover, after turning LEFT") do
            expect(turn_rover_left('N')).to eq('W')
        end

        it("should validate the new direction of the face of the rover, after turning RIGHT") do
            expect(turn_rover_right('N')).to eq('E')
        end

        it("should validate the new position of the face of the rover, after moving one step forward") do
            expect(move_rover_forward('x','y')).to eq('x,y+1')
        end
    end

    context "to verify if the rover moves as expected in all the directions"do
        it("should validate the new position in respective direction") do
            expect(move_rover_forward_in_all_directions('x','y','N')).to eq('x,y+1')
        end
    end

    context "to verify if the rover moves as expected in the right directions when there are a series of instructions"do
        it("should validate the final new rover facing direction") do
            expect(move_rover_to_new_position('1','2','N','LMLMLMLMM')).to eq([1,3,'N'])
        end

        it("should validate the final new rover facing direction") do
            expect(move_rover_to_new_position('3','3','E','MMRMMRMRRM')).to eq([5,1,'E'])
        end
    end

    context "to verify if the rover is playing within the playing field" do
        it("should find out final position after movement and raise error if it went out of plateau") do
            expect(move_rover_on_plateau('5','5','3','3','E','MMRMMRMRRM')).to be(true)
        end

        it("should find out final position after movement and raise error if it went out of plateau") do
            expect(move_rover_on_plateau('5','5','3','3','E','MMRMMRMRRMMMMMMMMMMM')).to be(false)
        end
    end
end