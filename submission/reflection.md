# Reflection answers

Team: 
Members: 

**a. In each relationship, which table holds the foreign key, and why that table?**

Tracks have artist_id because each track belongs to one artist, while an artist can have many tracks. We used dependent: :destroy so deleting an artist also deletes its tracks.

**b. What happens to a Festival's Stages when the Festival is destroyed? Where in your code did you specify that behavior?**



**c. Why does `Performance` need to be its own model with its own table, rather than a bare join table with no model?**



**Pair B only: what changed in `rails routes` when you used `shallow: true`?**

Listing and creating tracks still use the artist's ID in the URL. Viewing, updating, and deleting a track only need the track's ID, so those routes are no longer nested under an artist.

**Bonus (Pair C): why might tickets be nested under both Attendee and Festival?**


