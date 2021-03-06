--
-- Tabella dei file scaricati on HTTP
--
CREATE TABLE IF NOT EXISTS httpfiles (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  source_id INTEGER NOT NULL REFERENCES sources(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capture_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  first_visualization_user_id INTEGER NOT NULL DEFAULT 0,
  flow_info VARCHAR( 255 ) NOT NULL,
  important BOOL DEFAULT 0,
  url VARCHAR( 4096 ),
  content_type VARCHAR( 255 ) DEFAULT '',
  file_path VARCHAR( 255 ),
  file_name VARCHAR( 1024 ),
  file_size INTEGER,
  file_parts VARCHAR( 255 ),
  file_stat VARCHAR( 25 )
);
