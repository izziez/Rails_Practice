require 'sinatra'
require 'unirest'

get '/' do
  @title = 'Photos'
  @photos = recent_photos
  erb :all_photos
end

  def recent_photos (hashtag = "chrispratt", resolution = "thumbnail")
    @photos = []
    instagram_response = "https://api.instagram.com/v1/tags/#{hashtag}/media/recent?client_id= ca0cb29834cf4ea99479b6bad87773a8"
    response = Unirest.get(instagram_response)
    photos_array = response.body["data"]

    photos_array.each do |photo|
      image = photo["images"][resolution]["url"]
      @photos << image
    end

    @photos
  end

  get '/:resolution/:hashtag' do
    @title = "photos"
    @photos = recent_photos(params[:hashtag], params[:resolution])
    erb :all_photos
  end
