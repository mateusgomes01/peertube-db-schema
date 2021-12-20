INSERT INTO admin(id, created_at, adm_name, Loc_country, Loc_language, email) VALUES ('00001', TO_DATE('19/03/2001', 'dd/MM/yyyy'), 'user00001', 'BR', 'PT', 'email1@email.com');
INSERT INTO admin(id, created_at, adm_name, Loc_country, Loc_language, email) VALUES ('00002', TO_DATE('19/05/2004', 'dd/MM/yyyy'), 'user00002', 'BR', 'PT', 'email2@email.com');
INSERT INTO admin(id, created_at, adm_name, Loc_country, Loc_language, email) VALUES ('00003', TO_DATE('19/08/2005', 'dd/MM/yyyy'), 'user00003', 'BR', 'PT', 'email3@email.com');

INSERT INTO common(id, created_at, cm_name, Loc_country, Loc_language, email) VALUES ('00004', TO_DATE('19/03/2001', 'dd/MM/yyyy'), 'user00004', 'BR', 'PT', 'email4@email.com');
INSERT INTO common(id, created_at, cm_name, Loc_country, Loc_language, email) VALUES ('00005', TO_DATE('19/05/2004', 'dd/MM/yyyy'), 'user00005', 'US', 'EN', 'email5@email.com');
INSERT INTO common(id, created_at, cm_name, Loc_country, Loc_language, email) VALUES ('00006', TO_DATE('19/08/2005', 'dd/MM/yyyy'), 'user00006', 'ES', 'ES', 'email6@email.com');
INSERT INTO common(id, created_at, cm_name, Loc_country, Loc_language, email) VALUES ('00007', TO_DATE('19/03/2001', 'dd/MM/yyyy'), 'user00007', 'US', 'EN', 'email7@email.com');
INSERT INTO common(id, created_at, cm_name, Loc_country, Loc_language, email) VALUES ('00008', TO_DATE('19/05/2004', 'dd/MM/yyyy'), 'user00008', 'JP', 'JP', 'email8@email.com');
INSERT INTO common(id, created_at, cm_name, Loc_country, Loc_language, email) VALUES ('00009', TO_DATE('19/08/2005', 'dd/MM/yyyy'), 'user00009', 'BR', 'PT', 'email9@email.com');

INSERT INTO phone(user_id, phone) VALUES ('00001', '123456');
INSERT INTO phone(user_id, phone) VALUES ('00002', '345345');
INSERT INTO phone(user_id, phone) VALUES ('00003', '567567');
INSERT INTO phone(user_id, phone) VALUES ('00004', '789789');
INSERT INTO phone(user_id, phone) VALUES ('00005', '907897');
INSERT INTO phone(user_id, phone) VALUES ('00006', '123123');

INSERT INTO channel(id, created_at, ch_name, owner) VALUES ('55555', TO_DATE('11/10/3333', 'dd/MM/yyyy'), 'channel55555', '00004');
INSERT INTO channel(id, created_at, ch_name, owner) VALUES ('66666', TO_DATE('22/11/4444', 'dd/MM/yyyy'), 'channel66666', '00005');
INSERT INTO channel(id, created_at, ch_name, owner) VALUES ('77777', TO_DATE('30/12/5555', 'dd/MM/yyyy'), 'channel77777', '00006');
INSERT INTO channel(id, created_at, ch_name, owner) VALUES ('88888', TO_DATE('12/10/3333', 'dd/MM/yyyy'), 'channel88888', '00004');

INSERT INTO video(channel_id, disc, created_at, vd_name, video_file) VALUES ('55555', '00001', TO_DATE('11/11/1111', 'dd/MM/yyyy'), 'video55555', 'video_file55555');
INSERT INTO video(channel_id, disc, created_at, vd_name, video_file) VALUES ('66666', '00002', TO_DATE('12/12/1212', 'dd/MM/yyyy'), 'video66666', 'video_file66666');
INSERT INTO video(channel_id, disc, created_at, vd_name, video_file) VALUES ('77777', '00003', TO_DATE('10/10/1010', 'dd/MM/yyyy'), 'video77777', 'video_file77777');
INSERT INTO video(channel_id, disc, created_at, vd_name, video_file) VALUES ('77777', '00004', TO_DATE('09/09/2001', 'dd/MM/yyyy'), 'video88888', 'video_file88888');

INSERT INTO watch(user_id, channel_id, video_disc) VALUES ('00004', '55555', '00001');
INSERT INTO watch(user_id, channel_id, video_disc) VALUES ('00005', '66666', '00002');
INSERT INTO watch(user_id, channel_id, video_disc) VALUES ('00006', '77777', '00003');

INSERT INTO coment(id, created_at, texto, user_id, channel_id, video_disc) VALUES ('00001', TO_DATE('19/03/2001', 'dd/MM/yyyy'), 'comment1', '00004', '55555', '00001');
INSERT INTO coment(id, created_at, texto, user_id, channel_id, video_disc) VALUES ('00002', TO_DATE('19/05/2001', 'dd/MM/yyyy'), 'comment2', '00005', '66666', '00002');
INSERT INTO coment(id, created_at, texto, user_id, channel_id, video_disc) VALUES ('00003', TO_DATE('19/08/2001', 'dd/MM/yyyy'), 'comment3', '00006', '77777', '00003');
