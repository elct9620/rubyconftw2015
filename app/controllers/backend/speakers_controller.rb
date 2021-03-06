class Backend::SpeakersController < Backend::BaseController

  def resort
    ids = params[:ids].map(&:to_i)
    Speaker.resort(ids)
    render nothing: true
  end

  private

    def collection_scope
      Speaker.order(:sort_order)
    end

  	def object_params
      params.require(:speaker).permit(:name, :avatar, :biography , :subject , :asbtract)
  	end

end

