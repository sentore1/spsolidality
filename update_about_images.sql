-- Update Mission section images to use newslider folder
UPDATE content_sections 
SET media_urls = '["/newslider/12.png"]'::jsonb
WHERE section_key = 'about_mission';

-- Update Response section images to use newslider folder
UPDATE content_sections 
SET media_urls = '["/newslider/dd.png"]'::jsonb
WHERE section_key = 'about_response';

-- If the sections use different keys (mission/vision), update those too
UPDATE content_sections 
SET media_urls = '["/newslider/12.png"]'::jsonb
WHERE section_key = 'mission' AND (media_urls IS NULL OR media_urls::text LIKE '%ufvimages%');

UPDATE content_sections 
SET media_urls = '["/newslider/dd.png"]'::jsonb
WHERE section_key = 'vision' AND (media_urls IS NULL OR media_urls::text LIKE '%ufvimages%');
