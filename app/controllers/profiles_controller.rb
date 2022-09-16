class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update ]

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
      format.html {redirect_to(@profile, :notice => 'El perfil se actualizo con exito')}
      else
        format.html { render :action => "edit" , :status=> :unprocessable_entity}
      end
    end
  end

  private

  def set_profile
    #@profile = ( current_user.profile ||= Profile.create )
    @profile = Profile.find params[:id]
  end

  def profile_params
    params.require(:profile).permit(:username,:email, :image, :phone, :first_name, :last_name, :bio, :user_id )
  end


end