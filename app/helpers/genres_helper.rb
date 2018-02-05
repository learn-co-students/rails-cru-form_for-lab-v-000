module GenresHelper
#  def concat_strings(str1, str2)
#    str1 + " " + str2
#  end
  def genre_name(genre)
    genre.name if genre.present?
  end
end
