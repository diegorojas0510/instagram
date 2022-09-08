class VotesController < ApplicationController

  before_action :set_content, only: [:create]
  before_action :set_comment, only: [:create]
  before_action :set_votable, only: [:create]

  def create
    Vote.create votable:@votable
    redirect_to @content, notice: 'Gracias por tu Like'
  end

  private

  def set_votable

    if @comment
      @votable = @comment
    else
      @votable = @content
    end

  end

  def set_comment
    @comment = Comment.find params[:comment_id] if params.has_key? :comment_id
  end

  # se obtiene el producto mediante el parametro con slug en la url slug da el nombre del producto más no expone el id
  def set_content
    @content = Content.find_by slug: params[:content_id]
  end

end