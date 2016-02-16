require 'rails_helper'

describe 'navigate' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)
  end

  it 'shows the name on the show page in a h1 tag' do
    visit song_path(@song.id)
    expect(page).to have_css("h1", text: "My Song")
  end

  it 'to song pages' do
    visit song_path(@song.id)
    expect(page.status_code).to eq(200)
  end
end

describe 'form' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
  end

  it 'shows a new form that submits content and redirects and prints out params' do
    visit new_song_path

    fill_in 'song[name]', with: "My song name"
    select @artist.name, from: 'song[artist_id]'
    select @genre.name, from: 'song[genre_id]'

    click_on "Create Song"

    expect(page).to have_content("My song name")
  end

  it 'shows an edit form that submits content and redirects and prints out params' do
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)

    visit edit_song_path(@song)

    fill_in 'song[name]', with: "My edit"
    select @artist.name, from: 'song[artist_id]'
    select @genre.name, from: 'song[genre_id]'

    click_on "Update Song"

    expect(page).to have_content("My edit")
  end
end

describe 'index' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
    @genre = Genre.create(name: "My Genre")
    @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)
  end

  it 'links to the genre page' do
    visit songs_path
    expect(page).to have_link(@genre.name, href: genre_path(@genre))
  end

  it 'links to the artist page' do
    visit songs_path
    expect(page).to have_link(@artist.name, href: artist_path(@artist))
  end
end
