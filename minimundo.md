# peertube db schema

## minimundo

- A peertube instance has many _User_, each user may own many _channels_, each _Channel_ may have many _videos_.

- A _User_ has an email, created date and a username. 
- A _Video_ has a title, created date and a _Video_ file.

- One user may subscribe to many channels and the subscription has a date. 
- One _Channel_ may be subscribed by many _Users_.

- One _Video_ can have many _Comments_. 
- A _Comment_ may belongs to one _Video_ only. 
- A user may comment on a video.
- A _Video_ must have a _Channel_.
- A _Video_ may be commented by many _Users_.
- A _Comment_ has an id, created_at and a text.

- A user may be a common _User_ or and _Admin_.
- An _Admin_ may delete many comments and a _Comment_ can be deleted by one _Admin_.

- An _User_ may makes many _Comments_.
- One _Comment_ may be made by one _User_.
