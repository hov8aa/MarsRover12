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

#def move_rover_on_plateau(plateau_x,plateau_y,x,y,rover_face,instructions)
#    return true
#end