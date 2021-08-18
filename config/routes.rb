Rails.application.routes.draw do
  resources :movies, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  def index
    movies = Movie.all 
    render json: movies 
  end
end
