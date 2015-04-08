
# The Search Controller is responsible for allowing users to search the site for profiles
class SearchController < ProfilesBaseController

  def search
    @query = params[:q]
    @query ? @profiles = Profile.search(@query) : @profiles = []
    @hash = find_markers(@profiles)
  end

end