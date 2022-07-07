class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end
end
