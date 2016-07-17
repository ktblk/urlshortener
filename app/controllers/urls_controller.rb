class UrlsController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
  end

  def create
    @url = Url.new(url_params)
    @url.save
    redirect_to root_path
  end

  def show
    # run server or site plus addition of "/show/:id --> :id params #calls to id of object in Url table --> e.g. :id => 1 = #"www.google.com"
    @url = Url.find(params[:id])
    redirect_to @url.url
  end

  def url_params
      params.require(:url).permit(:url)
  end

end
