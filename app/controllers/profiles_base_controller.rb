class ProfilesBaseController < ApplicationController
 

	def profile_params
    params.require(:profile).permit(:name, :professional_id, :sector_id, :image, :info, :company, :full_description, :address, :verified,
      :job, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

  def find_markers(profile)
    hash = Gmaps4rails.build_markers(profile) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
      marker.title profile.name
    end
    hash
  end
  
end
