class LoggedController < ApplicationController
  def show
  end
  def electricity
    @meter = Meter.find_by(type_id:1, user_id: current_user.id)
    @limite= Limite.find_by(meter_id:(3*current_user.id-2))
  end
  def water
    @meter = Meter.find_by(type_id:2, user_id: current_user.id)
    @limite = Limite.find_by(meter_id:(3*current_user.id-1))
  end
  def gas
    @meter = Meter.find_by(type_id:3, user_id: current_user.id)
    @limite = Limite.find_by(meter_id:(3*current_user.id))
  end
  def settings

  end

  def create
    @limite = Limite.find_by(meter_id:(3*current_user.id))#User.find(params[:user_id])
    @limite.value=(params[:limite.value3])
    @limite.save#@user.limites.new(limites_params)
    alert('ola')
    redirect_to logged_path
  end

end