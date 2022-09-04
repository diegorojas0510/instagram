class CommentsController < ApplicationController
  # Se dispara antes de que se ejecute el metodo de la clase
  # Se obtiene el pots desde el metodo private
  before_action :set_content, only: [:create]

  # 1.Se define este metodo create para los comentarios pero antes de que se ejecute se dispara el before action ver comentario
  # 2.Mediante los atributos del private en su metodo comment_params creamos el comentario para el post
  def create
    @content.comments.create comment_params
    redirect_to @content, notice: 'Comentario creado de forma correcta.'
  end

  private

  # se obtiene el producto mediante el parametro con slug en la url slug da el nombre del producto más no expone el id
  def set_content
    @content = Content.find_by slug:params[:content_id]
  end

  # Se permiten ciertos atributos
  def comment_params
    params.require(:comment).permit(:opinion)
  end
end