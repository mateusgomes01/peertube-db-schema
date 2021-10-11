# peertube db schema

## minimundo b version

A peertube instance has many user, each user may own many channels, each channel may have many videos.

A user has an email, created date and a username. A video has a title, created date and a video file.

One user may subscribe to many channels. One channel may be subscribed by many users.

One user may create one comment on one video. One video can have many comments. A comment may belongs to one video only.

A user may be a Common user or and Admin. An Admin may delete many users and a user may be deleted by deleted by one admin.

A user donating one donation may donate to one channel. A channel may receive many donations from a user. A channel may receive one donation from many users.
