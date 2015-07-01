class Album < ActiveRecord::Base
  serialize :properties
  # before_save :populate_properties

  attr_reader :discogs_id

  def initialize(discogs_id)
    super()
    @discogs_id = discogs_id
  end


  def populate_properties
    self.properties = Search.wrapper.get_release(@discogs_id.to_s)
    if(self.properties['artists'].length > 1)
      artist_names = properties['artists'].map {|artist| artist['name']}
      puts artist_names
      if(artist_names.length > 2)
        self.properties['artists_formatted'] = artist_names[0...-1].join(', ') + ", and #{artist_names[-1]}"
      else
        self.properties['artists_formatted'] = artist_names[0...-1].join(', ') + " and #{artist_names[-1]}"
      end
    else
      self.properties['artists_formatted'] = self.properties['artists'].first['name']
    end
  end

end
