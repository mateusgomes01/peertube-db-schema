# peertube db schema

## minimundo

A peertube instance has many user, each user has a channel, each channel may have many videos.

A user has an email, created date and a username. A video has a title, created date and a video file.

Users can comment on videos. Users can reply to comments on videos. One video can have many comments. A comment belongs to one video only. A video may have a description. A channel may have a description.
