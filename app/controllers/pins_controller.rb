class PinsController < ApplicationController
  def index
    #este listara los pines en la variable y los mostrara en la vista
    @pins = Pin.all
  end
  # crear nuevo pines
  def new
    # varible de instancia para usarla en el index
    @pin = Pin.new
  end

  def create
    pin = Pin.new(pin_params)
    pin.user = current_user
    if pin.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def pin_params
    params.require(:pin).permit(:tittle, :image_url)
  end
end
