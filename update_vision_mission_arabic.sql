-- Update Vision with Arabic translation
UPDATE content_sections 
SET 
  title = jsonb_set(
    title::jsonb, 
    '{ar}', 
    '"رؤيتنا"'::jsonb
  ),
  content = jsonb_set(
    content::jsonb, 
    '{ar}', 
    '"مجتمع تتمتع فيه الأسر الضعيفة بإمكانية الوصول إلى الحماية الاجتماعية والإغاثة الطارئة والتعليم الجيد والإرشاد الروحي وفرص التمكين من أجل التنمية المستدامة والاعتماد على الذات."'::jsonb
  )
WHERE section_key = 'vision';

-- Update Mission with Arabic translation
UPDATE content_sections 
SET 
  title = jsonb_set(
    title::jsonb, 
    '{ar}', 
    '"مهمتنا"'::jsonb
  ),
  content = jsonb_set(
    content::jsonb, 
    '{ar}', 
    '"تمكين المجتمعات من خلال الدعوة والتعليم والعمل. دعم الأسر الضعيفة والأيتام والأرامل والأسر المحرومة من خلال برامج شاملة تعيد الكرامة وتوفر الإغاثة الطارئة وتعزز التعليم وتقوي القيم الأخلاقية وتمكن المجتمعات من الاعتماد على الذات."'::jsonb
  )
WHERE section_key = 'mission';
