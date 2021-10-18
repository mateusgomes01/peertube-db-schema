# peertube db schema

## minimundo

A peertube instance has many user, each user may own many channels, each channel may have many videos.

A user has an email, created date and a username. A video has a title, created date and a video file.

One user may subscribe to many channels. One channel may be subscribed by many users.

One video can have many comments. A comment may belongs to one video only. A user may comment on a video. One video may be commented by many users. A comment may have a donation to the channel owner by the user making that comment. A donation has a value. A comment has an author, created_at, updated_at and text.

A user may be a Common user or and Admin. An Admin may delete many users and a user may be deleted by one admin.

A user may makes many comments. One comment may be made by one user.
