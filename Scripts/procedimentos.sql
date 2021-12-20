-- Procedimento 1

CREATE OR REPLACE PROCEDURE USERS_WITHOUT_CHANNEL IS
    CURSOR USUARIO_CURSOR IS SELECT common.cm_name, common.id FROM common;
    USUARIO VARCHAR(20);
    ID NUMBER;
    AUX NUMBER;
BEGIN
    OPEN USUARIO_CURSOR;
    LOOP
        AUX := 1;
        FETCH USUARIO_CURSOR INTO USUARIO, ID;
        EXIT WHEN USUARIO_CURSOR%NOTFOUND;

        SELECT CASE
            WHEN EXISTS (SELECT channel.owner FROM channel WHERE channel.owner = ID)
            THEN 1
            ELSE 0
        END INTO AUX FROM DUAL;

        IF AUX = 1 THEN
            dbms_output.put_line('O usuário ' || USUARIO || ' de ID = ' || ID || ' possui canal');
        ELSE
            dbms_output.put_line('O usuário ' || USUARIO || ' de ID = ' || ID || ' não possui canal');
        END IF;
    END LOOP;
    CLOSE USUARIO_CURSOR;
END;

-- Procedimento que vai pegar todos os usuários e checar se cada usuário tem um canal ou não.

-- Execução do Procedimento 1

BEGIN
    USERS_WITHOUT_CHANNEL;
END;


-- Procedimento 2

CREATE OR REPLACE PROCEDURE CHANNEL_USER IS
    CHANNEL VARCHAR(20);
    USUARIO VARCHAR(20);
    ID NUMBER;
BEGIN
    SELECT common.cm_name INTO USUARIO FROM common WHERE common.id = 4;
    SELECT channel.ch_name, channel.owner INTO CHANNEL, ID FROM channel WHERE channel.owner = 4;

    dbms_output.put_line(CHANNEL ||' é do '|| USUARIO || ' pois tem o ID igual a ' || ID);
END;

-- Procedimento que vai procurar o nome do usuário com ID = X e o seu respectivo canal

-- Execução do Procedimento 2

BEGIN
    CHANNEL_USER;
END;


-- Procedimento 3

CREATE OR REPLACE PROCEDURE QTD_USERS IS
    QT_ADM NUMBER;
    QT_CMN NUMBER;
    QT_TOTAL NUMBER;
BEGIN
    SELECT COUNT(*) INTO QT_ADM FROM admin;
    SELECT COUNT(*) INTO QT_CMN FROM common;
    QT_TOTAL := QT_ADM + QT_CMN;
    dbms_output.put_line('Temos um total de ' || QT_TOTAL || ' usuários: ' || QT_ADM || ' admins e '|| QT_CMN || ' commons.');
END;

-- Procedimento que vai dizer a quantidade de usuários no total: admins + commons

-- Execução do Procedimento 3

BEGIN
    QTD_USERS;
END;


