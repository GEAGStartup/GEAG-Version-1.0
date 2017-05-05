class LoggedController < ApplicationController
  def show
  end
  def electricity
    @meter = Meter.find_by(type_id:1, user_id: current_user.id)
  end
  def water
    @meter = Meter.find_by(type_id:2, user_id: current_user.id)
  end
  def gas
    @meter = Meter.find_by(type_id:3, user_id: current_user.id)
  end
  def settings

  end
end