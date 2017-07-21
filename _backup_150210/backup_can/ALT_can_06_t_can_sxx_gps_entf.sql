DROP TABLE IF EXISTS t_can_sxx_gps_entf CASCADE;
CREATE TABLE t_can_sxx_gps_entf AS

SELECT * FROM v_can_sxx_gps_entf
ORDER BY znr