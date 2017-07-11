class Ign
  def self.get_news(search)
    response = RestClient::Request.execute(
      method: :get,
      url: "https://newsapi.org/v1/articles?source=ign&sortBy=#{search}&apiKey=#{ENV['IGN_API_Key']}"
    )
    JSON.parse(response)['articles']
  end
end
