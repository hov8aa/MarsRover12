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

def move_rover_to_new_position(x,y,direction,instructions)
    x = x.to_i  # Convert x to an integer
    y = y.to_i  # Convert y to an integer
    i=0
    while i<instructions.length do
        if instructions[i] == 'L'
            direction = turn_rover_left(direction)
        elsif instructions[i] == 'R'
            direction = turn_rover_right(direction)
        elsif instructions[i] == 'M'
            #Calculate_New_Position_Of_Rover
            x, y = move_rover_forward_in_all_directions_returning_values(x,y,direction)
        end
        i = i+1
    end
return x,y,direction
end