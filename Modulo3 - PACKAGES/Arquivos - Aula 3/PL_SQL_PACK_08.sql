
EXECUTE user_dev.CLIENTE_PAC.INCLUIR_CLIENTE(10, 'PRIMEIRO CLIENTE INCLUIDO POR USER_APP VIA PACKAGE','45678',2,120000);

SELECT * FROM CLIENTE;

EXECUTE CLIENTE_PAC.INCLUIR_CLIENTE(11, 'SEGUNDO CLIENTE INCLUIDO POR USER_APP VIA PACKAGE', '24534',2,130000);