-- Clear existing hero slides and re-seed from /public/slide/ folder
DELETE FROM hero_slides;

INSERT INTO hero_slides (media_url, media_type, title, subtitle, is_active, order_index) VALUES
(
  '/slide/1.png',
  'image',
  '{"en": "Building Solidarity Across Communities", "fr": "Construire la solidarité entre les communautés", "ar": "بناء التضامن بين المجتمعات", "rw": "Kubaka ubumwe mu miryango"}',
  '{"en": "Empowering refugees and host communities through education, health, and economic development.", "fr": "Autonomiser les réfugiés et les communautés hôtes par l''éducation, la santé et le développement économique.", "ar": "تمكين اللاجئين والمجتمعات المضيفة من خلال التعليم والصحة والتنمية الاقتصادية.", "rw": "Gutera inkunga impunzi n''amatsinda y''abakira binyuze mu burezi, ubuzima n''iterambere ry''ubukungu."}',
  true, 1
),
(
  '/slide/2.png',
  'image',
  '{"en": "Education for Every Child", "fr": "L''éducation pour chaque enfant", "ar": "التعليم لكل طفل", "rw": "Uburezi kubana bose"}',
  '{"en": "Providing quality education opportunities to vulnerable children and youth across Rwanda.", "fr": "Offrir des opportunités d''éducation de qualité aux enfants et jeunes vulnérables à travers le Rwanda.", "ar": "توفير فرص تعليمية عالية الجودة للأطفال والشباب الضعفاء في جميع أنحاء رواندا.", "rw": "Gutanga amahirwe y''uburezi bw''igihe kubana n''urubyiruko rw''ingorane muri Rwanda yose."}',
  true, 2
),
(
  '/slide/WhatsApp Image 2026-09-07 at 10.17.27 PM.png',
  'image',
  '{"en": "Health & Well-being Programs", "fr": "Programmes de santé et de bien-être", "ar": "برامج الصحة والرفاهية", "rw": "Porogaramu z''ubuzima n''imibereho myiza"}',
  '{"en": "Delivering essential healthcare services to underserved communities in the Great Lakes region.", "fr": "Fournir des services de santé essentiels aux communautés mal desservies dans la région des Grands Lacs.", "ar": "تقديم خدمات الرعاية الصحية الأساسية للمجتمعات المحرومة في منطقة البحيرات الكبرى.", "rw": "Gutanga serivisi z''ubuvuzi bigenga ku miryango isigaye inyuma mu karere k''Ibiyaga Bigari."}',
  true, 3
),
(
  '/slide/WhatsApp Image 2026-09-07 at 10.41.32 PM.png',
  'image',
  '{"en": "Women Empowerment & Leadership", "fr": "Autonomisation et leadership des femmes", "ar": "تمكين المرأة والقيادة", "rw": "Gutera inkunga abagore no kuyobora"}',
  '{"en": "Supporting women with skills, resources, and opportunities to lead change in their communities.", "fr": "Soutenir les femmes avec des compétences, des ressources et des opportunités pour mener le changement.", "ar": "دعم المرأة بالمهارات والموارد والفرص لقيادة التغيير في مجتمعاتها.", "rw": "Gufasha abagore ubushobozi, ibikoresho n''amahirwe yo kuyobora impinduka mu miryango yabo."}',
  true, 4
),
(
  '/slide/WhatsApp Image 2026-09-07 at 10.41.34 PM.png',
  'image',
  '{"en": "Community Resilience & Development", "fr": "Résilience et développement communautaire", "ar": "صمود المجتمع وتطويره", "rw": "Gukomeza no gukuza umuryango"}',
  '{"en": "Building resilient communities that can withstand challenges and thrive together.", "fr": "Construire des communautés résilientes capables de surmonter les défis et de prospérer ensemble.", "ar": "بناء مجتمعات صامدة قادرة على مواجهة التحديات والازدهار معاً.", "rw": "Kubaka imiryango ikomeye ishobora guhangana n''ibibazo no gutunga hamwe."}',
  true, 5
),
(
  '/slide/WhatsApp Image 2026-09-07 at 10.52.08 PM.png',
  'image',
  '{"en": "Social Protection for Vulnerable Families", "fr": "Protection sociale pour les familles vulnérables", "ar": "الحماية الاجتماعية للأسر الضعيفة", "rw": "Kurinda imibereho y''imiryango ishonje"}',
  '{"en": "Ensuring that no family is left behind through our comprehensive social protection programs.", "fr": "S''assurer qu''aucune famille n''est laissée pour compte grâce à nos programmes de protection sociale.", "ar": "ضمان عدم ترك أي أسرة خلف الركب من خلال برامجنا الشاملة للحماية الاجتماعية.", "rw": "Kwemeza ko nta muryango usigara inyuma binyuze mu bikorwa byacu byuzuye byo kurinda imibereho."}',
  true, 6
),
(
  '/slide/WhatsApp Image 2026-09-07 at 7.39.33 PM (1).png',
  'image',
  '{"en": "Partnerships for Greater Impact", "fr": "Partenariats pour un impact plus grand", "ar": "شراكات من أجل تأثير أكبر", "rw": "Ubufatanye bwo gukuza ingaruka"}',
  '{"en": "Collaborating with local and international partners to maximize our reach and impact.", "fr": "Collaborer avec des partenaires locaux et internationaux pour maximiser notre portée et notre impact.", "ar": "التعاون مع الشركاء المحليين والدوليين لتعظيم نطاق عملنا وتأثيره.", "rw": "Gukorana n''abafatanyabikorwa b''aho no mpuzamahanga kugira ngo twongere ingaruka zacu."}',
  true, 7
),
(
  '/slide/WhatsApp Image 2026-09-07 at 7.39.34 PM.png',
  'image',
  '{"en": "Join Us in Making a Difference", "fr": "Rejoignez-nous pour faire la différence", "ar": "انضم إلينا لإحداث فرق", "rw": "Tuungane kugira ngo tuhindurane"}',
  '{"en": "Together we can create lasting change for refugees and host communities across the Great Lakes region.", "fr": "Ensemble, nous pouvons créer un changement durable pour les réfugiés et les communautés hôtes.", "ar": "معاً يمكننا إحداث تغيير دائم للاجئين والمجتمعات المضيفة في منطقة البحيرات الكبرى.", "rw": "Hamwe dushobora guhindura impunzi n''imiryango y''abakira mu karere k''Ibiyaga Bigari."}',
  true, 8
),
(
  '/slide/WhatsApp Image 2026-09-07 at 7.43.53 PM.png',
  'image',
  '{"en": "Hope, Dignity & Solidarity", "fr": "Espoir, dignité et solidarité", "ar": "الأمل والكرامة والتضامن", "rw": "Icyizere, Agaciro n''Ubumwe"}',
  '{"en": "Restoring hope and dignity to displaced people and vulnerable communities since our founding.", "fr": "Restaurer l''espoir et la dignité aux personnes déplacées et aux communautés vulnérables depuis notre fondation.", "ar": "إعادة الأمل والكرامة للنازحين والمجتمعات الضعيفة منذ تأسيسنا.", "rw": "Gusubiza icyizere n''agaciro abantu bahunga n''imiryango ishonje kuva dushyizweho."}',
  true, 9
);
