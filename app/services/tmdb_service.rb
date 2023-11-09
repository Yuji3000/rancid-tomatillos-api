require 'faraday'
class TmdbService
  def self.all_movies
    conn = Faraday.new(url: "https://api.themoviedb.org/3/") 

    response = conn.get("account/20681297/favorite/movies") do |req| 
      req.headers["accept"] = 'application/json'
      req.headers['Authorization'] = "Bearer #{ENV["tmdb_bearer_token"]}"
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end