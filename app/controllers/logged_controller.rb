class LoggedController < ApplicationController
  def show
  end
  def electricity
    @meters = Meter.find(1)
  end
  def water
    @meters = Meter.find(2)
  end
  def gas
    @meters = Meter.find(3)
  end
  def settings

  end
end