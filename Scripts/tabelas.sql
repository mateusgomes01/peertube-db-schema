CREATE TABLE common ( 
    id 
        INTEGER 
        NOT NULL 
        PRIMARY KEY, 
    created_at DATE, 
    cm_name VARCHAR(255), 
    Loc_country VARCHAR(2), 
    Loc_language VARCHAR(2), 
    email VARCHAR(255) 
);

CREATE TABLE admin( 
    id 
        INTEGER 
        NOT NULL 
        PRIMARY KEY, 
    created_at DATE, 
    adm_name VARCHAR(255), 
    Loc_country VARCHAR(2), 
    Loc_language VARCHAR(2), 
    email VARCHAR(255) 
);

CREATE TABLE phone( 
    user_id INTEGER, 
    phone VARCHAR(255), 
    CONSTRAINT PK_TELEFONE PRIMARY KEY(user_id, phone)
);

CREATE TABLE channel( 
    id 
        INTEGER 
        NOT NULL 
        PRIMARY KEY, 
    created_at DATE, 
    ch_name VARCHAR(255), 
    owner 
        INTEGER 
        NOT NULL, 
    CONSTRAINT FK_OWNER_ID FOREIGN KEY (owner) REFERENCES common(id) 
);

CREATE TABLE video( 
    channel_id 
        INTEGER 
        NOT NULL, 
    disc 
        INTEGER 
        NOT NULL, 
    created_at DATE, 
    vd_name VARCHAR(255), 
    video_file VARCHAR(255), 
    CONSTRAINT PK_VIDEO PRIMARY KEY (channel_id, disc), 
    CONSTRAINT FK_CHANNEL_ID FOREIGN KEY (channel_id) REFERENCES channel(id) 
);

CREATE TABLE watch( 
    user_id 
        INTEGER 
        NOT NULL, 
    channel_id 
        INTEGER 
        NOT NULL, 
    video_disc 
        INTEGER 
        NOT NULL, 
    CONSTRAINT PK_WATCH PRIMARY KEY (user_id, channel_id, video_disc), 
    CONSTRAINT FK_USER_ID FOREIGN KEY (user_id) REFERENCES common(id), 
    CONSTRAINT FK_VIDEO_PK FOREIGN KEY (channel_id, video_disc) REFERENCES video(channel_id, disc) 
);

CREATE TABLE coment( 
    id 
        INTEGER 
        NOT NULL 
        PRIMARY KEY, 
    created_at DATE, 
    texto VARCHAR(255), 
    user_id 
        INTEGER 
        NOT NULL, 
    channel_id 
        INTEGER 
        NOT NULL, 
    video_disc 
        INTEGER 
        NOT NULL, 
    CONSTRAINT FK_WATCH_PK FOREIGN KEY (user_id, channel_id, video_disc) REFERENCES watch(user_id, channel_id, video_disc) 
);
