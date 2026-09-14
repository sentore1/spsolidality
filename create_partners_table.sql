-- Create partners table
CREATE TABLE IF NOT EXISTS partners (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  logo_url TEXT NOT NULL,
  website_url TEXT,
  is_active BOOLEAN DEFAULT true,
  order_index INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE partners ENABLE ROW LEVEL SECURITY;

-- Allow public read
CREATE POLICY "Allow public read on partners"
  ON partners FOR SELECT
  USING (true);

-- Allow authenticated users to manage partners
CREATE POLICY "Allow authenticated insert on partners"
  ON partners FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Allow authenticated update on partners"
  ON partners FOR UPDATE
  TO authenticated
  USING (true);

CREATE POLICY "Allow authenticated delete on partners"
  ON partners FOR DELETE
  TO authenticated
  USING (true);

-- Seed partner data using actual files from /public/partners/
INSERT INTO partners (name, logo_url, is_active, order_index) VALUES
  ('UNHCR',      '/partners/Unhcr.JPG',                                          true, 1),
  ('SEGAL',      '/partners/SEGAL.JPG',                                          true, 2),
  ('Inkomoko',   '/partners/Inkomoko.JPG',                                       true, 3),
  ('World',      '/partners/World.JPG',                                          true, 4),
  ('Partner',    '/partners/WhatsApp Image 2026-09-07 at 10.09.03 PM.jpeg',      true, 5);
