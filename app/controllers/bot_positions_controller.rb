class BotPositionsController < ApplicationController
  before_action :get_robot

  def index
  end

  def place
    @robot.bot_position.update(x_axis: 0, y_axis: 0)
    flash[:notice] = "Robot has been placed "
    redirect_to :root
  end

  def right
    x_axis = @robot.bot_position.x_axis
    unless x_axis >= 4
      if @robot.bot_position.update(x_axis: x_axis+1)
        flash[:notice] = "Moved to right"
      end
    else
      flash[:notice] = "Action not valid"
    end
      redirect_to :root
  end

  def left
    x_axis = @robot.bot_position.x_axis
    if x_axis > 0
      if @robot.bot_position.update(x_axis: x_axis-1)
        flash[:notice] = "Moved to left"
      end
    else
      flash[:notice] = "Action not valid"
    end
      redirect_to :root
  end

  private

  def get_robot
    @robot = Robot.find_by(params[:robot_id])
  end
end
