# MakersBnB - Specification and user stories.

# Setup

Run bundle
Create a "makersbnb" and "makersbnb_test" database
Run the commands in db/migrations to create the 2 required tables
Run rspec
Run app.rb
Go to LocalHost:4567 ( http://127.0.0.1:4567/ )


# User stories!

1: Any signed-up user can list a new space.

```
As a host
So I can use the website.
I would like to sign up.
```
```
As a host
So I can rent out the space
I would like to list a new space.
```

2: Hosts can list multiple spaces.

```
As a host
So that I can list multiple spaces
I would like to add more spaces to my profile.
```

3: Hosts should be able to name their space, provide a short description of the space, and a price per night.

```
As a host
So that I can identify my spaces
I would like to name each space.
```

```
As a host
So that I can identify my spaces
I would like to add a description to each space.
```

```
As a host
So that I can identify my spaces
I would like to add a price to each space.
```

4: Hosts should be able to offer a range of dates where their space is available.

```
As a host
So that I can show space availability
I would like to set availability for a range of dates.
```

5: Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.

```
As a guest
So that I can rent a space
I would like to request an available space.
```

```
As a host
So that I can control bookings
I would like to approve requests.
```

6: Nights for which a space has already been booked should not be available for users to book that space.

```
As a host/guest
So that a space isn't double booked
I want to only see/show available dates.
```

7: Until a user has confirmed a booking request, that space can still be booked for that night.

```
As a host
so that I can rent my space
I would like my space to remain available until the request has been confirmed.
```