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
  end

end
