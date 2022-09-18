module BotPositionsHelper

def x_position(robot, index)
	if robot.bot_position.x_axis == 0 && robot.bot_position.y_axis == 0	&& index == 0
		return 'active'
	elsif robot.bot_position.x_axis == 1 && index == 1 && robot.bot_position.y_axis == 0
		return 'active'
	elsif robot.bot_position.x_axis == 2 && index == 2 && robot.bot_position.y_axis == 0
		return 'active'
	elsif robot.bot_position.x_axis == 3 && index == 3 && robot.bot_position.y_axis == 0
		return 'active'
	elsif robot.bot_position.x_axis == 4 && index == 4 && robot.bot_position.y_axis == 0
		return 'active'
	end
end

def y_position(robot, index)
	if robot.bot_position.y_axis == 1 && index == 0 && robot.bot_position.x_axis == 0
		return 'active'
	elsif 
		robot.bot_position.y_axis == 1 && index == 1 && robot.bot_position.x_axis == 1
		return 'active'
	elsif robot.bot_position.y_axis == 1 && index == 2 && robot.bot_position.x_axis == 2
		return 'active'
	elsif robot.bot_position.y_axis == 1 && index == 3 && robot.bot_position.x_axis == 3	
		return 'active'
	elsif robot.bot_position.y_axis == 1 && index == 4 && robot.bot_position.x_axis == 4
		return 'active'
	end
end

end
