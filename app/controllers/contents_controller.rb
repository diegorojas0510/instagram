class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    current_page = params[:page] ||= 1
    @contents = Content.populars.visible.paginate(page: current_page, per_page: 10)
  end

  def new
    @content = Content.new
  end

  def show
    #@content = Content.find params[:id]
  end

  def update
    if @content.update content_params # esta definido en el private
      redirect_to content_path(@content), notice: "Tu pots Se actualizo con exito!" # si se cumple la condición se redirecciona a la imagen creada
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    #@content = Content.find params[:id]
  end

  def create
    @content = Content.create content_params
    if @content.persisted?
      redirect_to content_path(@content), notice: "Acabas de postear una nueva imagen"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @content.destroy
    redirect_to contents_path status: :see_other, notice: "Acabas de eliminar una foto super!"
  end

  def search
    @q = params[:q]
    @contents = Content.where("name LIKE ?", "%#{@q}%").where(visible: true)
  end


  private


  def set_content
    @content = Content.friendly.find params[:id]
  end


  def content_params
    params.require(:content).permit(:name, :description, :visible, :image)
  end

end