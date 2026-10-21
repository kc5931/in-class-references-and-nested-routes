Rails.application.routes.draw do
  # Phases 3 and 4: add your nested routes in YOUR section only.
  # Staying inside your own section keeps merge conflicts small.
  # Check your work with:  bin/rails routes | grep <resource>


  # ---------- Pair A: Festival -> Stage ----------
  resources :festivals do
    resources :stages
  end


  # ---------- Pair B: Artist -> Track (use shallow nesting) ----------
  resources :artists do
    resources :tracks, shallow: true
  end

  # ---------- Pair C: Attendee -> Ticket (and Festival -> Ticket) ----------
  # List one attendee's tickets: GET /attendees/:attendee_id/tickets
  # Parent id param: :attendee_id (and :festival_id on the festival route)
  # Nested twice because a ticket belongs to both an attendee and a festival:
  #   /attendees/:attendee_id/tickets -> one attendee's purchase history
  #   /festivals/:festival_id/tickets -> one festival's ticket sales
  # only: [] adds the nested route without redefining Pair A's festival routes
  resources :attendees do
    resources :tickets
  end
  resources :festivals, only: [] do
    resources :tickets, only: [:index]
  end


  # ---------- Integrator: Stage / Artist -> Performance ----------



end
