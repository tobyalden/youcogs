class Search

  @@wrapper = Discogs::Wrapper.new("YouCogs",
                                  app_key: "GmVlHqECqUzWJNTIjiax",
                                  app_secret: "REyntAlmEiRAGkinbrrzAfjrJzoAlpNS")

  attr_reader :results

  def initialize(keyword)
    @keyword = keyword
    @results = []
  end

  def populate_results
    @results = @@wrapper.search(@keyword, :type => :release).results;
    @results.each do |result|
      if(result['thumb'] == "")
        result['thumb'] = "http://i.imgur.com/rj3Qh9i.png";
      end
    end
  end

end
