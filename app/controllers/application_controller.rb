class ApplicationController < ActionController::API

  rescue_from ActiveResource::ResourceNotFound, with: :not_found

  def not_found
    render json: { error: 'Character not found' }, status: :not_found
  end
end
