# Reflection answers

Members: Ka Pui Cheung, Justin Oh, Natasha Guallpa, Geovany Urgiles, Emily Dong, Nikhil Diddee.

**a. In each relationship, which table holds the foreign key, and why that table?**

Stages have festival_id because each stage belongs to one festival. Tracks have artist_id because each track belongs to one artist, while an artist can have many tracks. Tickets have attendee_id and festival_id because each ticket belongs to one attendee and one festival. Performances have stage_id and artist_id because each performance connects one stage and one artist. The foreign keys go on the many side so each child can point to its parent.

We used dependent: :destroy so deleting an artist also deletes its tracks.

**b. What happens to a Festival's Stages when the Festival is destroyed? Where in your code did you specify that behavior?**

Destroying a festival also destroys its stages because the Festival model uses has_many :stages, dependent: :destroy. If the festival has tickets, has_many :tickets, dependent: :restrict_with_error blocks deleting the festival, so its stages stay too.

**c. Why does `Performance` need to be its own model with its own table, rather than a bare join table with no model?**

Performance stores starts_at along with stage_id and artist_id, so it represents a scheduled performance. Its own model lets us validate the start time and connect stages and artists using has_many :through.

**Pair B only: what changed in `rails routes` when you used `shallow: true`?**

Listing and creating tracks still use the artist's ID in the URL. Viewing, updating, and deleting a track only need the track's ID, so those routes are no longer nested under an artist.

**Pair C only: why might tickets be nested under both Attendee and Festival?**

Each ticket belongs to both an attendee and a festival. The attendee route shows one attendee's purchase history. The festival route shows one festival's ticket sales.
