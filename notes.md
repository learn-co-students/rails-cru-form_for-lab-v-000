models:
1. song (belongs to an artist and genre)
2. artist has many songs
3. genre has many songs


[ ] each model can be created, updated and shown.

[ ] song show page displays each of the song's genre and artist and links to the respectie genre/artist show pages.

[ ]use strong params


may use the resource, model, migration and controller generators

rails g model Author name:string genre:string bio:text --no-test-framework