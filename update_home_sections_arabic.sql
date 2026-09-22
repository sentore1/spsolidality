-- Update Impact Header Section with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"تأثيرنا"'::jsonb),
  content = jsonb_set(content::jsonb, '{ar}', '"تغيير حقيقي يُقاس بحياة حقيقية. كل رقم يمثل شخصاً ساعدنا في حماية كرامته وصحته ومستقبله."'::jsonb)
WHERE section_key = 'impact_header';

-- Update Impact Students with Arabic
UPDATE content_sections 
SET content = jsonb_set(content::jsonb, '{ar}', '"4,834 شخصاً تأثروا من خلال الخدمات الصحية"'::jsonb)
WHERE section_key = 'impact_students';

-- Update Impact Families with Arabic
UPDATE content_sections 
SET content = jsonb_set(content::jsonb, '{ar}', '"238 شخصاً دُعموا من خلال المساعدات الإنسانية"'::jsonb)
WHERE section_key = 'impact_families';

-- Update Impact Women with Arabic
UPDATE content_sections 
SET content = jsonb_set(content::jsonb, '{ar}', '"300 شاب وامرأة لاجئ تم تمكينهم من خلال برامجنا"'::jsonb)
WHERE section_key = 'impact_women';

-- Update Impact Mediation with Arabic
UPDATE content_sections 
SET content = jsonb_set(content::jsonb, '{ar}', '"10 أغاني سلام بُثت عبر منطقة البحيرات الكبرى"'::jsonb)
WHERE section_key = 'impact_mediation';

-- Update Impact Emergency with Arabic
UPDATE content_sections 
SET content = jsonb_set(content::jsonb, '{ar}', '"تأسست عام 2019 - نمت SPS من غرفة في مستشفى إلى قوة إقليمية للتغيير"'::jsonb)
WHERE section_key = 'impact_emergency';

-- Update Impact Youth with Arabic
UPDATE content_sections 
SET content = jsonb_set(content::jsonb, '{ar}', '"نشطة في منطقة البحيرات الكبرى لخدمة المجتمعات المهجرة والمضيفة"'::jsonb)
WHERE section_key = 'impact_youth';

-- Update CTA Section with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"قفوا مع اللاجئين. ابنوا السلام."'::jsonb),
  content = jsonb_set(content::jsonb, '{ar}', '"Spirit of Peace and Solidarity تؤمن بأن كل لاجئ ليس عبئاً بل موردًا. انضم إلينا لتمكين اللاجئين وتقوية المجتمعات وبناء مستقبل حيث لا يُترك أحد خلف الركب."'::jsonb)
WHERE section_key = 'cta_section';

-- Update Map Section with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"نطاقنا عبر منطقة البحيرات الكبرى"'::jsonb),
  content = jsonb_set(
    content::jsonb, 
    '{ar}', 
    '"تعمل SPS في منطقة البحيرات الكبرى، مقدمة الدعم الإنساني والتعليم والصحة والتمكين الاقتصادي مباشرة للاجئين والمجتمعات المضيفة.|نؤمن بقوة المشاركة المجتمعية لدفع التغيير الإيجابي. 🇷🇼|لهذا السبب نعمل عن كثب مع القادة المحليين ومقدمي الرعاية الصحية وأفراد المجتمع لضمان أن برامجنا تستجيب لاحتياجات الأشخاص الذين نخدمهم."'::jsonb
  )
WHERE section_key = 'map_section';


-- Update About Us Section with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"من نحن"'::jsonb),
  content = jsonb_set(content::jsonb, '{ar}', '"تأسست عام 2019، Spirit of Peace and Solidarity (SPS) هي منظمة إنسانية يقودها اللاجئون (RLO) تدعم اللاجئين والمجتمعات المضيفة في الأوضاع الضعيفة عبر منطقة البحيرات الكبرى. متجذرة في التجربة المعاشة للتهجير، تؤمن SPS بأن اللاجئين ليسوا مستفيدين سلبيين بل عوامل فاعلة للتغيير."'::jsonb)
WHERE section_key = 'about_us';

-- Update Testimonials Header with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"خدمة المجتمعات"'::jsonb),
  content = jsonb_set(content::jsonb, '{ar}', '"العمل جنباً إلى جنب مع الأشخاص المهجرين والأسر المضيفة لبناء المرونة واستعادة الكرامة وخلق سلام دائم."'::jsonb)
WHERE section_key = 'testimonials_header';

-- Update Testimonial 1 with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"قائد المجتمع"'::jsonb),
  content = jsonb_set(content::jsonb, '{ar}', '"لقد حولت برامج الحماية الاجتماعية مجتمعنا. الأسر الضعيفة لديها الآن الوصول إلى الدعم الذي يحتاجونه لإعادة بناء حياتهم بكرامة.|كيغابيرو، رواماغانا"'::jsonb)
WHERE section_key = 'testimonial_1';

-- Update Testimonial 2 with Arabic
UPDATE content_sections 
SET 
  title = jsonb_set(title::jsonb, '{ar}', '"مستفيد من البرنامج"'::jsonb),
  content = jsonb_set(content::jsonb, '{ar}', '"من خلال برنامج تمكين المرأة، اكتسبت المهارات والموارد لبدء عملي الخاص. الآن يمكنني دعم عائلتي والمساهمة في تنمية مجتمعي.|كيميهورورا، غاسابو"'::jsonb)
WHERE section_key = 'testimonial_2';
