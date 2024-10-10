def turn_rover_left(direction)
    if(direction) == 'N'
        return 'W'
    elsif(direction) == 'W'
        return 'S'
    elsif(direction) == 'S'
        return 'E'
    elsif(direction) == 'E'
        return 'N'
    end
end

def turn_rover_right(direction)
    if(direction) == 'N'
        return 'E'
    elsif(direction) == 'E'
        return 'S'
    elsif(direction) == 'S'
        return 'W'
    elsif(direction) == 'W'
        return 'N'
    end
end

def move_rover_forward(x,y)
    return 'x,y+1'
end

def move_rover_forward_in_all_directions(x,y,direction)
    #return 'x,y+1'
    #expanading on move_rover_forward
    if(direction) == 'N'
        return 'x,y+1'
    elsif(direction) == 'E'
        return 'x,y-1'
    elsif(direction) == 'S'
        return 'x-1,y'
    elsif(direction) == 'W'
        return 'x+1,y'
    end
end