-- Clear existing partners and insert updated list
DELETE FROM partners;

-- Insert all current partners from /public/partners/ folder
INSERT INTO partners (name, logo_url, is_active, order_index) VALUES
  ('UNHCR',      '/partners/Unhcr.JPG',                                          true, 1),
  ('SEGAL',      '/partners/SEGAL.JPG',                                          true, 2),
  ('Inkomoko',   '/partners/Inkomoko.JPG',                                       true, 3),
  ('Partner',    '/partners/WhatsApp Image 2026-09-07 at 10.09.03 PM.jpeg',      true, 4),
  ('Partner',    '/partners/2.png',                                              true, 5),
  ('Partner',    '/partners/3.png',                                              true, 6),
  ('Partner',    '/partners/34.png',                                             true, 7),
  ('Partner',    '/partners/fsdf.png',                                           true, 8);
