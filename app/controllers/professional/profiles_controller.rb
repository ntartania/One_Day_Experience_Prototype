# The Professional Profile Controller is responsible for allowing a professional to create, update and delete a profile

class Professional::ProfilesController < ProfilesBaseController

  before_action :authenticate_professional!

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.verified = false
    @profile.professional = current_professional
    if @profile.save 
      redirect_to root_path
    else
      render :action=>'new'
    end
  end

  def show
    @profile = current_professional.profile
    render "/profiles/show"
  end

  def edit
    @profile = current_professional.profile
  end

  def update
    @profile = current_professional.profile
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = current_professional.profile
    @profile.destroy
    redirect_to '/'
    flash[:notice] = "Your profile has been deleted successfully"
  end

end