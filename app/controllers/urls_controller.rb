class UrlsController < ApplicationController
  before_action :authenticate_user!, except: :show

  # GET /urls/:slug
  def show
    @url = Url.find_by_slug(params[:slug]) 
    render 'errors/404', status: 404 if @url.nil?
    redirect_to @url.link
  end

  # POST /urls
  def create
    @url = Url.new(url_params)
    @url.user_id = current_user.id

    if @url.save
      render json: {
        status: {code: 200, message: 'Short url created successfully'},
        data: UrlSerializer.new(@url).serializable_hash[:data][:attributes]
      }, status: :created
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def url_params
      params.fetch(:url, {}).permit(:link)
    end
end
