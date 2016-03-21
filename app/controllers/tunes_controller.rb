class TunesController < ApplicationController
  def index

  end

  def send_url
    url = params[:url]
    Tracer.d("url=" + url.to_s)

    exec("chrome.exe")

    render json: {success:true}
  end
end
