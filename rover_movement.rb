def turn_rover_left(direction)
    if direction == 'N'
        return 'W'
    elsif direction == 'W'
        return 'S'
    elsif direction == 'S'
        return 'E'
    elsif direction == 'E'
        return 'N'
    end
end

def turn_rover_right(direction)
    if direction == 'N'
        return 'E'
    elsif direction == 'E'
        return 'S'
    elsif direction == 'S'
        return 'W'
    elsif direction == 'W'
        return 'N'
    end
end

def move_rover_forward(x,y)
    return 'x,y+1'
end

def move_rover_forward_in_all_directions(x,y,direction)
    if direction == 'N'
        return 'x,y+1'
    elsif direction == 'E'
        return 'x,y-1'
    elsif direction == 'S'
        return 'x-1,y'
    elsif direction == 'W'
        return 'x+1,y'
    end
end

def move_rover_forward_in_all_directions_returning_values(x, y, direction)
    if direction == 'N'
      return x, y + 1
    elsif direction == 'E'
      return x + 1, y
    elsif direction == 'S'
      return x, y - 1
    elsif direction == 'W'
      return x - 1, y
    end
end

def move_rover_to_new_position(x,y,rover_face,instructions)
    x = x.to_i  # Convert x to an integer
    y = y.to_i  # Convert y to an integer
    i=0
    while i<instructions.length do
        if instructions[i] == 'L'
            rover_face = turn_rover_left(rover_face)
        elsif instructions[i] == 'R'
            rover_face = turn_rover_right(rover_face)
        elsif instructions[i] == 'M'
            #Calculate_New_Position_Of_Rover
            x, y = move_rover_forward_in_all_directions_returning_values(x,y,rover_face)
        end
        i = i+1
    end
return x,y,rover_face
end

def move_rover_on_plateau(plateau_x,plateau_y,x,y,rover_face,instructions)
    status=nil
    x, y, rover_face = move_rover_to_new_position(x,y,rover_face,instructions)

    #DRAFT LOGIC
    #How to find out if the new rover position is on the given square plateau or not
=begin
For example, plateau is : 5, 5

Rover positions on plateau:
    3,5     5,5     4,5     
    0,1     0,0     5,0     0,5
So, in this particular case, 
Any both the coordinates of final rover position are equal to or less then given maximum coordinates
OR NOT Negative, 
Than the rover is always on the given  plateau

Rover positions outside plateau:
    5,6     6,5     6,6
    -1,0    0,-1    -1,-1
So, in this particular case, 
Any either of the coordinates of final rover position are more than given maximum coordinates
OR not negative,
are always on the given plateau
Than the rover is always outside the given  plateau
=end
end