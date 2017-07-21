CREATE OR REPLACE FUNCTION f_hex2int(hexval numeric) RETURNS integer AS $$
DECLARE
    result  int;
BEGIN
    EXECUTE 'SELECT ''' || hexval || '''::int' INTO result;
    RETURN result;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT;