
CREATE OR REPLACE PROCEDURE INCLUIR_SEGMENTO
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, p_DESCRICAO);
END;

SELECT * FROM SEGMERCADO;

EXECUTE INCLUIR_SEGMENTO (NULL, 'SEGMENTO INCLUIDO PELO USUÁRIO USER_APP');

CREATE OR REPLACE PROCEDURE INCLUIR_SEGMENTO
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, p_DESCRICAO);
   EXCEPTION
        WHEN EXCEPTION_PAC.e_null THEN
            raise_application_error (-20015, 'Campo do segmento com preechimento obrigatório');
END;

EXECUTE INCLUIR_SEGMENTO (NULL, 'SEGMENTO INCLUIDO PELO USUÁRIO USER_APP');
