-- Add all landing page sections to CMS
INSERT INTO content_sections (section_key, title, content, media_urls) VALUES
-- Impact Section
('impact_header', 
'{"en": "Our Impact", "fr": "Notre Impact", "rw": "Ingaruka Zacu", "ar": "تأثيرنا"}',
'{"en": "Through our core programs - social protection, emergency relief, education, faith-based initiatives, women & youth empowerment, and family protection - we''re making a significant impact in communities across Rwanda.", "fr": "Grâce à nos programmes de base - protection sociale, aide d''urgence, éducation, initiatives confessionnelles, autonomisation des femmes et des jeunes et protection de la famille - nous avons un impact significatif dans les communautés du Rwanda.", "rw": "Binyuze muri gahunda zacu z''ibanze - kurinda imibereho, ubufasha bw''ihutirwa, uburezi, ibikorwa bishingiye ku idini, guha imbaraga abagore n''urubyiruko hamwe no kurinda imiryango - tugira uruhare runini mu miryango yo mu Rwanda.", "ar": "من خلال برامجنا الأساسية - الحماية الاجتماعية والإغاثة الطارئة والتعليم والمبادرات القائمة على الإيمان وتمكين المرأة والشباب وحماية الأسرة - نحدث تأثيرًا كبيرًا في المجتمعات في جميع أنحاء رواندا."}',
'[]'),

('impact_students', 
'{"en": "Students Supported", "fr": "Étudiants Soutenus", "rw": "Abanyeshuri Bafashijwe", "ar": "الطلاب المدعومون"}',
'{"en": "Students in Rwamagana School Each Year", "fr": "Étudiants à l''école de Rwamagana chaque année", "rw": "Abanyeshuri bo mu ishuri rya Rwamagana buri mwaka", "ar": "الطلاب في مدرسة بوجيسيرا كل عام"}',
'[]'),

('impact_families', 
'{"en": "Families Supported", "fr": "Familles Soutenues", "rw": "Imiryango Yafashijwe", "ar": "العائلات المدعومة"}',
'{"en": "Vulnerable Families Supported", "fr": "Familles vulnérables soutenues", "rw": "Imiryango ifite ibibazo yafashijwe", "ar": "العائلات الضعيفة المدعومة"}',
'[]'),

('impact_women', 
'{"en": "Women Empowered", "fr": "Femmes Autonomisées", "rw": "Abagore Bahawe Imbaraga", "ar": "النساء الممكنات"}',
'{"en": "Women Empowered Through Skills Training", "fr": "Femmes autonomisées par la formation professionnelle", "rw": "Abagore bahawe imbaraga binyuze mu mahugurwa y''ubumenyi", "ar": "النساء الممكنات من خلال التدريب على المهارات"}',
'[]'),

('impact_mediation', 
'{"en": "Mediation Services", "fr": "Services de Médiation", "rw": "Serivisi zo Guhuza", "ar": "خدمات الوساطة"}',
'{"en": "Families Receiving Mediation Services", "fr": "Familles bénéficiant de services de médiation", "rw": "Imiryango yakiriye serivisi zo guhuza", "ar": "العائلات التي تتلقى خدمات الوساطة"}',
'[]'),

('impact_emergency', 
'{"en": "Emergency Relief", "fr": "Aide d''Urgence", "rw": "Ubufasha bw''Ihutirwa", "ar": "الإغاثة الطارئة"}',
'{"en": "Emergency Relief Responses", "fr": "Réponses d''aide d''urgence", "rw": "Ibisubizo by''ubufasha bw''ihutirwa", "ar": "استجابات الإغاثة الطارئة"}',
'[]'),

('impact_youth', 
'{"en": "Youth Supported", "fr": "Jeunes Soutenus", "rw": "Urubyiruko Rwafashijwe", "ar": "الشباب المدعومون"}',
'{"en": "Youth Supported Through Programs", "fr": "Jeunes soutenus par les programmes", "rw": "Urubyiruko rwafashijwe binyuze muri gahunda", "ar": "الشباب المدعومون من خلال البرامج"}',
'[]'),

-- CTA Section
('cta_section', 
'{"en": "Shaping the Future of Communities", "fr": "Façonner l''avenir des communautés", "rw": "Gushushanya ejo hazaza h''imiryango", "ar": "تشكيل مستقبل المجتمعات"}',
'{"en": "A future where every child grows up in dignity, every woman lives free from violence, and every family has the stability and knowledge to build a better tomorrow.", "fr": "Un avenir où chaque enfant grandit dans la dignité, chaque femme vit sans violence et chaque famille a la stabilité et les connaissances pour construire un avenir meilleur.", "rw": "Ejo hazaza aho buri mwana akura mu cyubahiro, buri mugore abaho adafite ihohoterwa, kandi buri muryango ufite umutekano n''ubumenyi bwo kubaka ejo hazaza heza.", "ar": "مستقبل حيث ينمو كل طفل بكرامة، وتعيش كل امرأة خالية من العنف، ولكل عائلة الاستقرار والمعرفة لبناء غد أفضل."}',
'[]'),

-- Testimonials Section
('testimonials_header', 
'{"en": "What People Say", "fr": "Ce que disent les gens", "rw": "Ibyo abantu bavuga", "ar": "ماذا يقول الناس"}',
'{"en": "Hear from community members whose lives have been transformed", "fr": "Écoutez les membres de la communauté dont la vie a été transformée", "rw": "Umva abaturage ubuzima bwabo bwahinduwe", "ar": "استمع إلى أفراد المجتمع الذين تحولت حياتهم"}',
'[]'),

('testimonial_1', 
'{"en": "Community Leader", "fr": "Leader Communautaire", "rw": "Umuyobozi w''Umuryango", "ar": "قائد المجتمع"}',
'{"en": "The Justice Begins at Home program has brought peace to our families. We now have the legal knowledge and tools to resolve conflicts peacefully within our homes.|Kinyinya Sector", "fr": "Le programme Justice Begins at Home a apporté la paix à nos familles. Nous avons maintenant les connaissances juridiques et les outils pour résoudre les conflits pacifiquement dans nos foyers.|Secteur Kinyinya", "rw": "Gahunda ya Justice Begins at Home yazanye amahoro mu miryango yacu. Ubu dufite ubumenyi bw''amategeko n''ibikoresho byo gukemura amakimbirane mu mahoro mu ngo zacu.|Umurenge wa Kinyinya", "ar": "برنامج العدالة تبدأ في المنزل جلب السلام لعائلاتنا. لدينا الآن المعرفة القانونية والأدوات لحل النزاعات بسلام داخل منازلنا.|قطاع كينينيا"}',
'[]'),

('testimonial_2', 
'{"en": "Teen Mother", "fr": "Mère Adolescente", "rw": "Umubyeyi w''Ingimbi", "ar": "أم مراهقة"}',
'{"en": "Through the Mama Youth Empowerment program, I was able to return to school and start a small business. I now have hope for my future and my child''s future.|Mama Youth Program", "fr": "Grâce au programme Mama Youth Empowerment, j''ai pu retourner à l''école et créer une petite entreprise. J''ai maintenant de l''espoir pour mon avenir et celui de mon enfant.|Programme Mama Youth", "rw": "Binyuze muri gahunda ya Mama Youth Empowerment, nashoboye gusubira ku ishuri no gutangiza ubucuruzi bucye. Ubu mfite ibyiringiro ku ejo hazaza hwanjye n''ejo hazaza h''umwana wanjye.|Gahunda ya Mama Youth", "ar": "من خلال برنامج تمكين شباب ماما، تمكنت من العودة إلى المدرسة وبدء عمل تجاري صغير. لدي الآن أمل في مستقبلي ومستقبل طفلي.|برنامج شباب ماما"}',
'[]'),

-- About Us Section
('about_us', 
'{"en": "Support Spirit of peace and solidarity?", "fr": "Notre Parapluie de Soutien pour les Vulnérables?", "rw": "Umutaka Wacu wo Gufasha Abafite Ibibazo?", "ar": "مظلتنا الداعمة للضعفاء؟"}',
'{"en": "Because we know that even the best programs are only as good as the people behind them. That''s why we offer comprehensive support, community empowerment, and sustainable solutions that create lasting impact in vulnerable communities across Rwanda.", "fr": "Parce que nous savons que même les meilleurs programmes ne valent que par les personnes qui les soutiennent. C''est pourquoi nous offrons un soutien complet, l''autonomisation communautaire et des solutions durables qui créent un impact durable dans les communautés vulnérables du Rwanda.", "rw": "Kuko tuzi ko n''ibikorwa byiza cyane bigira agaciro gusa kubera abantu babikora. Ni yo mpamvu dutanga ubufasha busesuye, guha imbaraga abaturage, n''ibisubizo birambye bikora ingaruka zihoraho mu miryango ifite ibibazo mu Rwanda.", "ar": "لأننا نعلم أن أفضل البرامج لا تكون جيدة إلا بقدر الأشخاص الذين يقفون وراءها. لهذا السبب نقدم الدعم الشامل وتمكين المجتمع والحلول المستدامة التي تخلق تأثيرًا دائمًا في المجتمعات الضعيفة في جميع أنحاء رواندا."}',
'["/ufvimages/42.jpg"]'),

-- Map Section
('map_section', 
'{"en": "Support Spirit of peace and solidarity", "fr": "Notre Parapluie de Soutien pour les Vulnérables", "rw": "Umutaka Wacu wo Gufasha Abafite Ibibazo", "ar": "مظلتنا الداعمة للضعفاء"}',
'{"en": "Spirit of peace and solidarity is deeply grateful for the organizations and individuals who stand with us.|We believe in the power of community engagement to drive positive change. 🇷🇼|That''s why we work closely with local leaders, healthcare providers, and community members to ensure that our programs are responsive to the needs of the people we serve.", "fr": "Spirit of peace and solidarity est profondément reconnaissant envers les organisations et les individus qui nous soutiennent.|Nous croyons au pouvoir de l''engagement communautaire pour conduire un changement positif. 🇷🇼|C''est pourquoi nous travaillons en étroite collaboration avec les dirigeants locaux, les prestataires de soins de santé et les membres de la communauté pour nous assurer que nos programmes répondent aux besoins des personnes que nous servons.", "rw": "Spirit of peace and solidarity ishimira cyane imiryango n''abantu badufasha.|Twizera imbaraga zo kugira uruhare mu miryango mu gutera imbere impinduka nziza. 🇷🇼|Ni yo mpamvu dukorana hafi n''abayobozi b''ibanze, abatanga serivisi z''ubuzima, n''abaturage kugira ngo tugenzure ko gahunda zacu zihuza n''ibikenewe by''abantu dukorera.", "ar": "مظلة الضعفاء ممتنة بعمق للمنظمات والأفراد الذين يقفون معنا.|نؤمن بقوة المشاركة المجتمعية لدفع التغيير الإيجابي. 🇷🇼|لهذا السبب نعمل بشكل وثيق مع القادة المحليين ومقدمي الرعاية الصحية وأفراد المجتمع لضمان أن برامجنا تستجيب لاحتياجات الأشخاص الذين نخدمهم."}',
'[]'),

-- Newsletter Section
('newsletter_section', 
'{"en": "Stay Updated", "fr": "Restez Informé", "rw": "Komeza Ukurikirana", "ar": "ابق على اطلاع"}',
'{"en": "Subscribe to our newsletter for updates on our programs and impact stories.|Enter your email|Subscribe", "fr": "Abonnez-vous à notre newsletter pour des mises à jour sur nos programmes et nos histoires d''impact.|Entrez votre email|S''abonner", "rw": "Iyandikishe kuri newsletter yacu kugira ngo ubone amakuru ku byerekeye gahunda zacu n''inkuru z''ingaruka.|Andika imeri yawe|Iyandikishe", "ar": "اشترك في نشرتنا الإخبارية للحصول على تحديثات حول برامجنا وقصص التأثير.|أدخل بريدك الإلكتروني|اشترك"}',
'[]'),

-- Programs Section
('programs_header', 
'{"en": "Our Programs", "fr": "Nos Programmes", "rw": "Gahunda Zacu", "ar": "برامجنا"}',
'{"en": "Through our diverse range of programs, we address countless challenges, resources, and opportunities to create lasting impact in communities.", "fr": "Grâce à notre gamme diversifiée de programmes, nous abordons d''innombrables défis, ressources et opportunités pour créer un impact durable dans les communautés.", "rw": "Binyuze muri gahunda zacu zitandukanye, dukemura ibibazo byinshi, umutungo, n''amahirwe yo gukora ingaruka zihoraho mu miryango.", "ar": "من خلال مجموعتنا المتنوعة من البرامج، نعالج تحديات وموارد وفرص لا حصر لها لخلق تأثير دائم في المجتمعات."}',
'[]');
