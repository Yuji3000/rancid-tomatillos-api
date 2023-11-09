require 'rails_helper'

describe 'Breweries Service' do
  it 'returns all movies' do
    response = TmdbService.all_movies

    
    expect(response).to be_a(Hash)
    expect(response).to have_key(:page)
    expect(response).to have_key(:results)
    expect(response[:results][0]).to have_key(:backdrop_path)
    expect(response[:results][0]).to have_key(:id)
    expect(response[:results][0]).to have_key(:original_title)
    # expect(response[:resutls][0]).to have_key()
    # expect(response[:resutls][0]).to have_key()
    # expect(response[:resutls][0]).to have_key()
    # expect(response[:resutls][0]).to have_key()

    
  end
end