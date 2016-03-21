class TunesController < ApplicationController
  def index

  end

  require 'httpclient'

  def send_url

    host = params[:host]
    url = params[:url]
    Tracer.d("host=" + host.to_s)
    Tracer.d("url=" + url.to_s)

    
    client = HTTPClient.new
    client.get_content('http://' + host + ':3000/open?url=' + url)
    

    #render json: {success:true}
  end

  def open
    url = params[:url]
    Tracer.d("url=" + url.to_s)
    system("chrome.exe " + url)

    render json: {success:true}
  end
end
