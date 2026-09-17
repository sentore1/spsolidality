-- Clear existing hero slides and re-seed from /public/newslider/ folder
DELETE FROM hero_slides;

INSERT INTO hero_slides (media_url, media_type, title, subtitle, is_active, order_index) VALUES
(
  '/newslider/1.png',
  'image',
  '{"en": "Building Solidarity Across Communities", "fr": "Construire la solidarité entre les communautés", "ar": "بناء التضامن بين المجتمعات", "rw": "Kubaka ubumwe mu miryango"}',
  '{"en": "Empowering refugees and host communities through education, health, and economic development.", "fr": "Autonomiser les réfugiés et les communautés hôtes par l''éducation, la santé et le développement économique.", "ar": "تمكين اللاجئين والمجتمعات المضيفة من خلال التعليم والصحة والتنمية الاقتصادية.", "rw": "Gutera inkunga impunzi n''amatsinda y''abakira binyuze mu burezi, ubuzima n''iterambere ry''ubukungu."}',
  true, 1
),
(
  '/newslider/2.png',
  'image',
  '{"en": "Education for Every Child", "fr": "L''éducation pour chaque enfant", "ar": "التعليم لكل طفل", "rw": "Uburezi kubana bose"}',
  '{"en": "Providing quality education opportunities to vulnerable children and youth across Rwanda.", "fr": "Offrir des opportunités d''éducation de qualité aux enfants et jeunes vulnérables à travers le Rwanda.", "ar": "توفير فرص تعليمية عالية الجودة للأطفال والشباب الضعفاء في جميع أنحاء رواندا.", "rw": "Gutanga amahirwe y''uburezi bw''igihe kubana n''urubyiruko rw''ingorane muri Rwanda yose."}',
  true, 2
),
(
  '/newslider/w2.png',
  'image',
  '{"en": "Health & Well-being Programs", "fr": "Programmes de santé et de bien-être", "ar": "برامج الصحة والرفاهية", "rw": "Porogaramu z''ubuzima n''imibereho myiza"}',
  '{"en": "Delivering essential healthcare services to underserved communities in the Great Lakes region.", "fr": "Fournir des services de santé essentiels aux communautés mal desservies dans la région des Grands Lacs.", "ar": "تقديم خدمات الرعاية الصحية الأساسية للمجتمعات المحرومة في منطقة البحيرات الكبرى.", "rw": "Gutanga serivisi z''ubuvuzi bigenga ku miryango isigaye inyuma mu karere k''Ibiyaga Bigari."}',
  true, 3
),
(
  '/newslider/w2 (1).png',
  'image',
  '{"en": "Women Empowerment & Leadership", "fr": "Autonomisation et leadership des femmes", "ar": "تمكين المرأة والقيادة", "rw": "Gutera inkunga abagore no kuyobora"}',
  '{"en": "Supporting women with skills, resources, and opportunities to lead change in their communities.", "fr": "Soutenir les femmes avec des compétences, des ressources et des opportunités pour mener le changement.", "ar": "دعم المرأة بالمهارات والموارد والفرص لقيادة التغيير في مجتمعاتها.", "rw": "Gufasha abagore ubushobozi, ibikoresho n''amahirwe yo kuyobora impinduka mu miryango yabo."}',
  true, 4
),
(
  '/newslider/w4.png',
  'image',
  '{"en": "Community Resilience & Development", "fr": "Résilience et développement communautaire", "ar": "صمود المجتمع وتطويره", "rw": "Gukomeza no gukuza umuryango"}',
  '{"en": "Building resilient communities that can withstand challenges and thrive together.", "fr": "Construire des communautés résilientes capables de surmonter les défis et de prospérer ensemble.", "ar": "بناء مجتمعات صامدة قادرة على مواجهة التحديات والازدهار معاً.", "rw": "Kubaka imiryango ikomeye ishobora guhangana n''ibibazo no gutunga hamwe."}',
  true, 5
),
(
  '/newslider/w5.png',
  'image',
  '{"en": "Social Protection for Vulnerable Families", "fr": "Protection sociale pour les familles vulnérables", "ar": "الحماية الاجتماعية للأسر الضعيفة", "rw": "Kurinda imibereho y''imiryango ishonje"}',
  '{"en": "Ensuring that no family is left behind through our comprehensive social protection programs.", "fr": "S''assurer qu''aucune famille n''est laissée pour compte grâce à nos programmes de protection sociale.", "ar": "ضمان عدم ترك أي أسرة خلف الركب من خلال برامجنا الشاملة للحماية الاجتماعية.", "rw": "Kwemeza ko nta muryango usigara inyuma binyuze mu bikorwa byacu byuzuye byo kurinda imibereho."}',
  true, 6
),
(
  '/newslider/w6.png',
  'image',
  '{"en": "Partnerships for Greater Impact", "fr": "Partenariats pour un impact plus grand", "ar": "شراكات من أجل تأثير أكبر", "rw": "Ubufatanye bwo gukuza ingaruka"}',
  '{"en": "Collaborating with local and international partners to maximize our reach and impact.", "fr": "Collaborer avec des partenaires locaux et internationaux pour maximiser notre portée et notre impact.", "ar": "التعاون مع الشركاء المحليين والدوليين لتعظيم نطاق عملنا وتأثيره.", "rw": "Gukorana n''abafatanyabikorwa b''aho no mpuzamahanga kugira ngo twongere ingaruka zacu."}',
  true, 7
),
(
  '/newslider/w8.png',
  'image',
  '{"en": "Join Us in Making a Difference", "fr": "Rejoignez-nous pour faire la différence", "ar": "انضم إلينا لإحداث فرق", "rw": "Tuungane kugira ngo tuhindurane"}',
  '{"en": "Together we can create lasting change for refugees and host communities across the Great Lakes region.", "fr": "Ensemble, nous pouvons créer un changement durable pour les réfugiés et les communautés hôtes.", "ar": "معاً يمكننا إحداث تغيير دائم للاجئين والمجتمعات المضيفة في منطقة البحيرات الكبرى.", "rw": "Hamwe dushobora guhindura impunzi n''imiryango y''abakira mu karere k''Ibiyaga Bigari."}',
  true, 8
),
(
  '/newslider/w81.png',
  'image',
  '{"en": "Hope, Dignity & Solidarity", "fr": "Espoir, dignité et solidarité", "ar": "الأمل والكرامة والتضامن", "rw": "Icyizere, Agaciro n''Ubumwe"}',
  '{"en": "Restoring hope and dignity to displaced people and vulnerable communities since our founding.", "fr": "Restaurer l''espoir et la dignité aux personnes déplacées et aux communautés vulnérables depuis notre fondation.", "ar": "إعادة الأمل والكرامة للنازحين والمجتمعات الضعيفة منذ تأسيسنا.", "rw": "Gusubiza icyizere n''agaciro abantu bahunga n''imiryango ishonje kuva dushyizweho."}',
  true, 9
),
(
  '/newslider/WhatsApp Image 2026-09-07 at 10.41.31 PM.png',
  'image',
  '{"en": "Youth Leadership & Mentorship", "fr": "Leadership et mentorat des jeunes", "ar": "قيادة الشباب والتوجيه", "rw": "Ubuyobozi bw''urubyiruko n''ubujyanama"}',
  '{"en": "Nurturing the next generation of leaders through mentorship, skills, and opportunity.", "fr": "Accompagner la prochaine génération de leaders à travers le mentorat, les compétences et les opportunités.", "ar": "رعاية الجيل القادم من القادة من خلال الإرشاد والمهارات والفرص.", "rw": "Gurera urubyiruko rw''abayobozi b''ejo hazaza binyuze mu bujyanama, ubushobozi n''amahirwe."}',
  true, 10
),
(
  '/newslider/WhatsApp Image 2026-09-07 at 10.41.31 PM (2).png',
  'image',
  '{"en": "Emergency Relief in Action", "fr": "L''aide d''urgence en action", "ar": "الإغاثة الطارئة في العمل", "rw": "Ubufasha bwihutirwa mu bikorwa"}',
  '{"en": "Responding rapidly to crises and disasters with immediate humanitarian assistance.", "fr": "Répondre rapidement aux crises et catastrophes avec une assistance humanitaire immédiate.", "ar": "الاستجابة السريعة للأزمات والكوارث بالمساعدة الإنسانية الفورية.", "rw": "Gusubiza vuba ku bibi n''ibiza n''ubufasha bw''ubuntu bwihutirwa."}',
  true, 11
),
(
  '/newslider/WhatsApp Image 2026-09-07 at 7.39.34 PM (2).png',
  'image',
  '{"en": "Peaceful Coexistence & Social Cohesion", "fr": "Coexistence pacifique et cohésion sociale", "ar": "التعايش السلمي والتماسك الاجتماعي", "rw": "Ubumwe n''ubufatanye bw''imibereho"}',
  '{"en": "Promoting peace, dialogue, and unity between refugee and host communities.", "fr": "Promouvoir la paix, le dialogue et l''unité entre les communautés réfugiées et hôtes.", "ar": "تعزيز السلام والحوار والوحدة بين مجتمعات اللاجئين والمضيفة.", "rw": "Guteza imbere amahoro, ibiganiro n''ubumwe hagati y''impunzi n''imiryango y''abakira."}',
  true, 12
),
(
  '/newslider/WhatsApp Image 2026-09-14 at 2.01.40 PM.png',
  'image',
  '{"en": "Creating Sustainable Futures", "fr": "Créer des avenirs durables", "ar": "خلق مستقبل مستدام", "rw": "Gushushanya ejo hazaza rirambye"}',
  '{"en": "Investing in long-term solutions that empower communities to sustain their own development.", "fr": "Investir dans des solutions à long terme qui permettent aux communautés de maintenir leur propre développement.", "ar": "الاستثمار في حلول طويلة الأمد تمكّن المجتمعات من الحفاظ على تنميتها الخاصة.", "rw": "Gushyira inkunga mu bisubizo birambye bituma imiryango ibasha gukomeza iterambere ryayo bwite."}',
  true, 13
),
(
  '/newslider/WhatsApp Image 2026-09-14 at 2.01.40 PM (2).png',
  'image',
  '{"en": "Faith, Values & Moral Leadership", "fr": "Foi, valeurs et leadership moral", "ar": "الإيمان والقيم والقيادة الأخلاقية", "rw": "Umutimanama, Indangagaciro n''Ubuyobozi bw''Imyitwarire"}',
  '{"en": "Strengthening moral values and ethical leadership through faith-based programs and community guidance.", "fr": "Renforcer les valeurs morales et le leadership éthique à travers des programmes confessionnels.", "ar": "تعزيز القيم الأخلاقية والقيادة الأخلاقية من خلال البرامج الدينية والتوجيه المجتمعي.", "rw": "Gukomeza indangagaciro n''ubuyobozi bw''imyitwarire binyuze mu gahunda zishingiye ku idini."}',
  true, 14
),
(
  '/newslider/WhatsApp Image 2026-09-14 at 2.01.40 PM (3).jpeg',
  'image',
  '{"en": "Humanitarian Aid & Protection", "fr": "Aide humanitaire et protection", "ar": "المساعدة الإنسانية والحماية", "rw": "Ubufasha bw''ubuntu no kurindwa"}',
  '{"en": "Protecting the most vulnerable and ensuring their rights are upheld with dignity and care.", "fr": "Protéger les plus vulnérables et s''assurer que leurs droits sont respectés avec dignité et soin.", "ar": "حماية الأكثر ضعفاً وضمان احترام حقوقهم بكرامة ورعاية.", "rw": "Kurinda ababangamiwe cyane no kwemeza ko uburenganzira bwabo bubahirizwa n''icyubahiro."}',
  true, 15
),
(
  '/newslider/WhatsApp Image 2026-09-14 at 2.01.41 PM (1).jpeg',
  'image',
  '{"en": "Stand With Us — Transform Lives", "fr": "Soyez à nos côtés — Transformez des vies", "ar": "قفوا معنا — غيّروا الحياة", "rw": "Duture Hamwe — Hindura Ubuzima"}',
  '{"en": "Your support enables Spirit of Peace and Solidarity to reach more families and build lasting change.", "fr": "Votre soutien permet à Spirit of Peace and Solidarity d''atteindre plus de familles et de créer un changement durable.", "ar": "دعمكم يمكّن Spirit of Peace and Solidarity من الوصول إلى المزيد من الأسر وبناء تغيير دائم.", "rw": "Inkunga yanyu ituma Spirit of Peace and Solidarity igera ku miryango myinshi kandi ikore impinduka zirambye."}',
  true, 16
);
