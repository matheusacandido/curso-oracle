
EXECUTE APP_INCLUIR_CLIENTE (30, 'INCLUIDO USADO PACKAGE', '33343', 2, 100000);

SELECT * FROM CLIENTE;

SET SERVEROUTPUT ON
EXEC dbms_output.put_line(CLIENTE_PAC.g_cli_lim_fatur_medio_grande);

EXECUTE APP_INCLUIR_CLIENTE (35, 'INCLUIDO USADO PACKAGE', '33343', 2, 100000);



