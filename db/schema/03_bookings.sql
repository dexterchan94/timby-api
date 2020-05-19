DROP TABLE IF EXISTS bookings CASCADE;

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY NOT NULL,
  tour_id integer NOT NULL REFERENCES tours (id) ON DELETE CASCADE,
  user_id integer NOT NULL REFERENCES users (id) ON DELETE CASCADE,
  comment text,
  rating integer,
  created_at TIMESTAMP DEFAULT NOW(),
  status varchar(255) NOT NULL
);
