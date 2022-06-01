CREATE DATABASE DBBANCO;
USE DBBANCO;
CREATE TABLE saldo(
	id int auto_increment not null primary key,
    nro_conta int not null,
    dataHora datetime not null,
    valor int not null,
    operacao char(2)
);

INSERT INTO saldo VALUES (null, 5144423,'2022-05-05 10:30:16', 150, 'D');
INSERT INTO saldo VALUES (null, 5144423, '2022-05-05 16:10:52', 100, 'D');
INSERT INTO saldo VALUES (null, 4345453, '2022-05-05 23:40:25', 200, 'D');

SET SQL_SAFE_UPDATES = 0;
BEGIN;
START TRANSACTION;
	UPDATE saldo set valor=valor-50 WHERE nro_conta=5144423;
    UPDATE saldo set valor=valor-70 WHERE nro_conta=4345453;
    SELECT * FROM saldo;
COMMIT;
END;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
BEGIN;
START TRANSACTION;
	UPDATE saldo set valor=valor-50 WHERE nro_conta=5144423;
    UPDATE saldo set valor=valor-70 WHERE nro_conta=4345453;
    SELECT * FROM saldo;
ROLLBACK;
SELECT * FROM saldo;
END;
SET SQL_SAFE_UPDATES = 1;
