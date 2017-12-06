class JamSession < ApplicationRecord
  belongs_to :host, class_name: "User"
  belongs_to :city
  belongs_to :genre
  has_many :musician_jams
  has_many :musicians, through: :musician_jams
  has_many :instrument_jams
  has_many :instruments, through: :instrument_jams

  def self.search_city(search)
    JamSession.joins(:city).where('cities.name LIKE ?', "%#{search}%")
  end

  def self.search_genre(search)
    JamSession.joins(:genre).where('genres.name LIKE ?', "%#{search}%")
  end

  def city_name=(name)
    self.city = City.find_or_create_by(name: name)
  end

  def city_name
    if self.city == nil
      return nil
    else
    self.city.name
    end
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    if self.genre == nil
      return nil
    else
    self.genre.name
    end
  end


end
