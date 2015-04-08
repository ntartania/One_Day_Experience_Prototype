
#The Student Profiles Controller is responsible for allowing students to send emails via the profile pages
class Student::ProfilesController < ProfilesBaseController

  before_action :authenticate_student!
  
  def send_email
    @profile = Profile.find(params[:id])
    @professional = Professional.find(@profile.professional_id)
    @student = current_student
    post_email(@professional, @student)
    redirect_to profile_path(@profile.id)
  end

  private

  def post_email(professional, student)
    StudentMailer.intro_email(professional, student).deliver_now
    flash[:notice] = "Your email has been sent."
  end

end
