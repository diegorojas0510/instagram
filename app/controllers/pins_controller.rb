class PinsController < ApplicationController
  def index
    @pin =Pin.all
  end
end
