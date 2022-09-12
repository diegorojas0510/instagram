class ProfilesController < ApplicationController
  before_action :set_profile

  def show
  end

  def edit; end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
      format.json { head :no_content }
      format.js
      else
        format.json { render json: @profile.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end

    end
  end

  private

  def set_profile
    @profile = ( current_user.profile ||= Profile.create )
  end


  def profile_params
    params.require(:profile).permit(:username,:phone, :photo, :first_name, :last_name, :bio, :user_id )
  end


end