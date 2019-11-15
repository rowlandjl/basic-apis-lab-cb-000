class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
<<<<<<< HEAD
      req.params['client_id'] = ''
      req.params['client_secret'] = ''
=======
      req.params['client_id'] = 'Iv1.9b4756f890ea1cef'
      req.params['client_secret'] = '910cff114df44f8d3f2a051d43f826571785d8f6'
>>>>>>> 4efe7069c15c28b729b2cbb91426fd932b9f6db4
      req.params['q'] = params[:query]
    end 
    body = JSON.parse(@resp.body)
    @results = body['items']
    render :search 
  end
end
