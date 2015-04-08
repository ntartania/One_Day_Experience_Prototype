
# The Admin Profiles Controller is responsible for allowing an admin user to verify profiles
class Admin::ProfilesController < ProfilesBaseController

  before_action :authenticate_admin!

  def unverified
    @profiles = Profile.where(:verified=>[false, nil])
  end

  def verify
    @profile = Profile.find(params[:id])
    @profile.verified = true
    @profile.save
    redirect_to unverified_profiles_path
  end

  def unverify
    @profile = Profile.find(params[:id])
    @profile.verified = false
    @profile.save
    redirect_to :back
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end


end
