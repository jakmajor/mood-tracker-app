class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/feelers" do
    Feeler.all.to_json
  end

  get "/feelers/:id" do
    feeler = Feeler.find_by(name: params[:id])
    feelings = Feeler.find_by(name: params[:id]).feelings

    {feeler: feeler, feelings: feelings}.to_json
  end


  post '/feelings/:user_id' do
    Feeling.create(feeler_id: params[:user_id], color: params[:color], text: params[:text])
    feeler = Feeler.find_by(id: params[:user_id])
    feelings = Feeler.find_by(id: params[:user_id]).feelings

    {feeler: feeler, feelings: feelings}.to_json
  end

end
