-- =============================================================
-- SPS CONTENT UPDATE
-- Spirit of Peace and Solidarity – Full website content update
-- =============================================================

-- ─────────────────────────────────────────────
-- MISSION SECTION
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Our Mission","fr":"Notre Mission","rw":"Intego Yacu","ar":"مهمتنا"}',
  content = '{"en":"To strengthen advocacy for human rights especially refugees while designing and implementing sustainable projects shaped by community participation and lived experience.","fr":"Renforcer le plaidoyer pour les droits humains, notamment des réfugiés, tout en concevant et en mettant en œuvre des projets durables façonnés par la participation communautaire et l''expérience vécue.","rw":"Gukomeza kugira ijambo mu kubahiriza uburenganzira bwa muntu cyane cyane impunzi, ndetse no gushyiraho no gushyira mu bikorwa imishinga y''igihe kirekire ishingiye ku ngingo z''abaturage n''ubunararibonye.","ar":"تعزيز المناصرة لحقوق الإنسان، لا سيما حقوق اللاجئين، مع تصميم وتنفيذ مشاريع مستدامة تتشكّل من خلال مشاركة المجتمع والتجربة المعاشة."}'
WHERE section_key = 'mission';

-- ─────────────────────────────────────────────
-- VISION SECTION
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Our Vision","fr":"Notre Vision","rw":"Inzozi Zacu","ar":"رؤيتنا"}',
  content = '{"en":"A society where human rights are equal for all, no one is left behind, and every voice is heard with dignity, protection and respect.","fr":"Une société où les droits de l''homme sont égaux pour tous, où personne n''est laissé pour compte et où chaque voix est entendue avec dignité, protection et respect.","rw":"Umuryango aho uburenganzira bwa muntu bungana bwa bose, nta n''umwe usigara inyuma, kandi ijwi ryose ryumvikanwa n''icyubahiro, kurindwa no gukiranukira.","ar":"مجتمع تتساوى فيه حقوق الإنسان للجميع، ولا يُترك أحد خلف الركب، وتُسمع كل صوت بكرامة وحماية واحترام."}'
WHERE section_key = 'vision';

-- ─────────────────────────────────────────────
-- ABOUT US (homepage banner section)
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Who We Are","fr":"Qui Sommes-Nous","rw":"Abo Turi Bo","ar":"من نحن"}',
  content = '{"en":"Founded in 2019, Spirit of Peace and Solidarity (SPS) is a humanitarian refugee-led organization (RLO) that supports refugees and host communities in vulnerable situations across the Great Lakes region. Rooted in lived experience of displacement, SPS believes that refugees are not passive beneficiaries but active agents of change.","fr":"Fondée en 2019, Spirit of Peace and Solidarity (SPS) est une organisation humanitaire dirigée par des réfugiés qui soutient les réfugiés et les communautés d''accueil en situation vulnérable dans la région des Grands Lacs. Ancrée dans l''expérience vécue du déplacement, SPS croit que les réfugiés ne sont pas des bénéficiaires passifs mais des agents actifs du changement.","rw":"Yashinzwe mu 2019, Spirit of Peace and Solidarity (SPS) ni umuryango w''ubufasha bw''ikiremwamuntu uyoborwa n''impunzi ufasha impunzi n''amatsinda y''abakira impunzi mu bihe bigoye mu karere k''Ibiyaga Bigari. Ishingiye ku bunararibonye bw''imyigarura, SPS yemera ko impunzi si abakirwa gusa ahubwo ni abasubiramo ndengakamere.","ar":"تأسست عام 2019، وهي منظمة إنسانية يقودها اللاجئون تدعم اللاجئين والمجتمعات المضيفة في المناطق الهشة عبر منطقة البحيرات الكبرى. متجذّرة في التجربة المعاشة للتهجير، تؤمن SPS بأن اللاجئين ليسوا مستفيدين سلبيين بل عوامل فاعلة للتغيير."}'
WHERE section_key = 'about_us';

-- ─────────────────────────────────────────────
-- MAP SECTION
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Our Reach Across the Great Lakes Region","fr":"Notre Portée dans la Région des Grands Lacs","rw":"Inzira Yacu mu Karere k''Ibiyaga Bigari","ar":"نطاق عملنا عبر منطقة البحيرات الكبرى"}',
  content = '{"en":"SPS works across the Great Lakes region, bringing humanitarian support, education, health, and economic empowerment directly to refugees and host communities in remote and underserved areas.|Serving Communities|Working hand-in-hand with displaced people and host families to build resilience, restore dignity, and create lasting peace in every community we serve.","fr":"SPS travaille dans toute la région des Grands Lacs, apportant un soutien humanitaire, l''éducation, la santé et l''autonomisation économique directement aux réfugiés et aux communautés d''accueil dans des zones éloignées et mal desservies.|Servir les Communautés|Travaillant main dans la main avec les personnes déplacées et les familles d''accueil pour renforcer la résilience, restaurer la dignité et créer une paix durable dans chaque communauté que nous servons.","rw":"SPS ikorera mu karere k''Ibiyaga Bigari, itanga inkunga y''ubufasha bw''ikiremwamuntu, uburezi, ubuzima, n''imbaraga z''ubukungu butari ibigurwa cyane ku mpunzi no ku matsinda y''abakira impunzi mu turere tumeze nabi n''udutumba.|Gukorera Amatsinda|Gukorana n''abantu bimukiwe n''imiryango y''abakira impunzi kubaka ubushobozi, gusubiza icyubahiro, no kurema amahoro arambye muri buri muryango tukorera.","ar":"تعمل SPS عبر منطقة البحيرات الكبرى، وتقدم الدعم الإنساني والتعليم والصحة والتمكين الاقتصادي مباشرةً للاجئين والمجتمعات المضيفة في المناطق النائية.|خدمة المجتمعات|نعمل جنباً إلى جنب مع النازحين والأسر المضيفة لبناء القدرة على الصمود واستعادة الكرامة وتحقيق سلام دائم في كل مجتمع نخدمه."}'
WHERE section_key = 'map_section';

-- ─────────────────────────────────────────────
-- CTA SECTION
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Stand With Refugees. Build Peace.","fr":"Soutenez les Réfugiés. Construisez la Paix.","rw":"Simama n''Impunzi. Senga Amahoro.","ar":"قف مع اللاجئين. ابنِ السلام."}',
  content = '{"en":"Spirit of Peace and Solidarity believes every refugee is not a burden but a resource. Join us to empower refugees, strengthen communities, and build a future where no one is left behind.","fr":"Spirit of Peace and Solidarity croit que chaque réfugié n''est pas un fardeau mais une ressource. Rejoignez-nous pour autonomiser les réfugiés, renforcer les communautés et bâtir un avenir où personne n''est laissé pour compte.","rw":"Spirit of Peace and Solidarity yemera ko buri mpunzi si umutwaro ahubwo ni umuryango. Tuungane tugire inkunga impunzi, tukomeze amatsinda, kandi tubake ejo hazaza aho nta n''umwe asigara inyuma.","ar":"تؤمن SPS بأن كل لاجئ ليس عبئاً بل مورداً. انضم إلينا لتمكين اللاجئين وتقوية المجتمعات وبناء مستقبل لا يُترك فيه أحد خلف الركب."}'
WHERE section_key = 'cta_section';

-- ─────────────────────────────────────────────
-- IMPACT HEADER
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Our Impact","fr":"Notre Impact","rw":"Ingaruka Zacu","ar":"أثرنا"}',
  content = '{"en":"Real change measured in real lives. Every number represents a person whose dignity, health, and future we helped protect.","fr":"Un changement réel mesuré dans des vies réelles. Chaque chiffre représente une personne dont nous avons aidé à protéger la dignité, la santé et l''avenir.","rw":"Impinduka nyirizina zizingirwa ku buzima nyabwo. Numero nziza iha umuntu wafashijwe kubungabunga icyubahiro, ubuzima, n''ejo hazaza.","ar":"تغيير حقيقي يُقاس بأرواح حقيقية. كل رقم يمثّل شخصاً ساعدنا في حماية كرامته وصحته ومستقبله."}'
WHERE section_key = 'impact_header';

-- ─────────────────────────────────────────────
-- IMPACT STATS
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Healthcare","fr":"Soins de Santé","rw":"Ubuzima","ar":"الرعاية الصحية"}',
  content = '{"en":"4,834 people impacted through healthcare services","fr":"4 834 personnes impactées grâce aux services de soins de santé","rw":"Abantu 4.834 bafashijwe binyuze mu mirimo y''ubuzima","ar":"4٬834 شخصاً استفادوا من خدمات الرعاية الصحية"}'
WHERE section_key = 'impact_students';

UPDATE content_sections
SET
  title   = '{"en":"Humanitarian Aid","fr":"Aide Humanitaire","rw":"Ubufasha bw''Ikiremwamuntu","ar":"المساعدة الإنسانية"}',
  content = '{"en":"238 people supported through humanitarian aid","fr":"238 personnes soutenues grâce à l''aide humanitaire","rw":"Abantu 238 bafashijwe binyuze mu bufasha bw''ikiremwamuntu","ar":"238 شخصاً تلقّوا الدعم عبر المساعدة الإنسانية"}'
WHERE section_key = 'impact_families';

UPDATE content_sections
SET
  title   = '{"en":"Youth & Women Empowered","fr":"Jeunes et Femmes Autonomisés","rw":"Urubyiruko n''Abagore Bahawe Ingufu","ar":"الشباب والنساء المُمكَّنون"}',
  content = '{"en":"300 youth and women refugees empowered through our programs","fr":"300 jeunes et femmes réfugiés autonomisés à travers nos programmes","rw":"Impunzi 300 z''urubyiruko n''abagore zahawe ingufu binyuze mu bikorwa byacu","ar":"300 شاب وامرأة من اللاجئين حصلوا على التمكين عبر برامجنا"}'
WHERE section_key = 'impact_women';

UPDATE content_sections
SET
  title   = '{"en":"Songs of Peace","fr":"Chants de Paix","rw":"Indirimbo z''Amahoro","ar":"أغاني السلام"}',
  content = '{"en":"10 songs of peace broadcast across the Great Lakes region","fr":"10 chants de paix diffusés dans la région des Grands Lacs","rw":"Indirimbo 10 z''amahoro zasangirwaga mu karere k''Ibiyaga Bigari","ar":"10 أغانٍ سلامية بُثّت عبر منطقة البحيرات الكبرى"}'
WHERE section_key = 'impact_mediation';

UPDATE content_sections
SET
  title   = '{"en":"Founded","fr":"Fondée","rw":"Yashinzwe","ar":"تأسست"}',
  content = '{"en":"Founded in 2019, SPS has grown from a hospital room into a regional force for change","fr":"Fondée en 2019, SPS est passée d''une chambre d''hôpital à une force régionale de changement","rw":"Yashinzwe mu 2019, SPS yakuze uhereye mu cyumba cy''ibitaro kugeza ku ngufu z''impinduramatwara y''akarere","ar":"تأسست عام 2019، ونمت SPS من غرفة مستشفى لتصبح قوة إقليمية للتغيير"}'
WHERE section_key = 'impact_emergency';

UPDATE content_sections
SET
  title   = '{"en":"Great Lakes Region","fr":"Région des Grands Lacs","rw":"Karere k''Ibiyaga Bigari","ar":"منطقة البحيرات الكبرى"}',
  content = '{"en":"Active across the Great Lakes region serving displaced and host communities","fr":"Actif dans la région des Grands Lacs au service des communautés déplacées et d''accueil","rw":"Ikorera mu karere k''Ibiyaga Bigari ikorana n''amatsinda y''impunzi n''abakira impunzi","ar":"نشط عبر منطقة البحيرات الكبرى يخدم المجتمعات النازحة والمضيفة"}'
WHERE section_key = 'impact_youth';

-- ─────────────────────────────────────────────
-- PROGRAMS HEADER
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Our Programs","fr":"Nos Programmes","rw":"Gahunda Zacu","ar":"برامجنا"}',
  content = '{"en":"SPS implements four core programs that respond directly to the needs of refugees and host communities across the Great Lakes region.","fr":"SPS met en œuvre quatre programmes principaux qui répondent directement aux besoins des réfugiés et des communautés d''accueil dans la région des Grands Lacs.","rw":"SPS ishyira mu bikorwa gahunda enye z''ibanze zisubiza neza ibihe by''impunzi n''amatsinda y''abakira impunzi mu karere k''Ibiyaga Bigari.","ar":"تنفّذ SPS أربعة برامج أساسية تستجيب مباشرةً لاحتياجات اللاجئين والمجتمعات المضيفة عبر منطقة البحيرات الكبرى."}'
WHERE section_key = 'programs_header';

-- ─────────────────────────────────────────────
-- PROGRAM 1 – Education & Vocational Training
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Education & Vocational Training","fr":"Éducation et Formation Professionnelle","rw":"Uburezi n''Amahugurwa y''Akazi","ar":"التعليم والتدريب المهني"}',
  content = '{"en":"We believe education is a fundamental right and a powerful tool for change. SPS breaks the cycle of dependency by equipping youth and women with the knowledge, skills, and confidence to take control of their futures through inclusive, practical, and transformative learning opportunities.","fr":"Nous croyons que l''éducation est un droit fondamental et un outil puissant de changement. SPS brise le cycle de la dépendance en dotant les jeunes et les femmes des connaissances, des compétences et de la confiance nécessaires pour prendre en main leur avenir grâce à des opportunités d''apprentissage inclusives, pratiques et transformatrices.","rw":"Twemera ko uburezi ari uburenganzira bw''ibanze kandi igikoresho cy''imbaraga cy''impinduka. SPS isenya inzitizi z''gushingira ku bandi ihanga urubyiruko n''abagore ibikoresho by''ubumenyi, ubuhanga, n''kwizera bisabwa kugira ngo bagenzure ejo hazaza habo binyuze mu mahirwe yo kwiga ahuza bose, ya pratike kandi ahindura ubuzima.","ar":"نؤمن بأن التعليم حق أساسي وأداة قوية للتغيير. تكسر SPS دائرة الاعتماد من خلال تزويد الشباب والنساء بالمعرفة والمهارات والثقة اللازمة للتحكم في مستقبلهم عبر فرص تعلم شاملة وعملية وتحويلية."}'
WHERE section_key LIKE 'program_education%' OR section_key = 'program_1';

-- ─────────────────────────────────────────────
-- PROGRAM 2 – Health & Wellness
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Health & Wellness","fr":"Santé et Bien-Être","rw":"Ubuzima n''Imibereho Myiza","ar":"الصحة والرفاهية"}',
  content = '{"en":"Access to healthcare is a fundamental human right. In partnership with local governments and the Ministry of Health, SPS manages health posts in hard-to-reach communities, reducing infant mortality, protecting mothers, and ensuring no one dies simply because they couldn''t reach a health facility in time.","fr":"L''accès aux soins de santé est un droit humain fondamental. En partenariat avec les gouvernements locaux et le Ministère de la Santé, SPS gère des postes de santé dans des communautés difficiles d''accès, réduisant la mortalité infantile, protégeant les mères et s''assurant que personne ne meurt simplement parce qu''il n''a pas pu atteindre un établissement de santé à temps.","rw":"Uburenganzira bwo kubona serivisi z''ubuzima ni uburenganzira bw''ibanze bwa muntu. Mu bufatanye n''inzego z''igihugu n''Ubuzima bw''Igihugu, SPS igenzura amavuriro mu turere tumeze nabi, igabanya urupfu rw''abana bato, irinda umubyeyi, kandi yirinda ko n''umwe apfa kubera gusa ko yabuze guhera ku ivuriro mu gihe.","ar":"الحصول على الرعاية الصحية حق إنساني أساسي. بالشراكة مع الحكومات المحلية ووزارة الصحة، تدير SPS مراكز صحية في المجتمعات النائية، وتعمل على خفض وفيات الأطفال وحماية الأمهات وضمان ألا يموت أحد لمجرد أنه لم يتمكن من الوصول إلى منشأة صحية في الوقت المناسب."}'
WHERE section_key LIKE 'program_health%' OR section_key = 'program_2';

-- ─────────────────────────────────────────────
-- PROGRAM 3 – Economic Empowerment
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Economic Empowerment","fr":"Autonomisation Économique","rw":"Gutera Inkunga mu Bukungu","ar":"التمكين الاقتصادي"}',
  content = '{"en":"True empowerment begins with economic independence. Our Economic Empowerment Program unleashes the entrepreneurial potential of refugees and host community members especially women and youth by equipping them with micro-grants, financial literacy training, mentorship, and market linkages to build self-sustaining businesses.","fr":"Le vrai autonomisation commence par l''indépendance économique. Notre Programme d''Autonomisation Économique libère le potentiel entrepreneurial des réfugiés et des membres de la communauté d''accueil, notamment les femmes et les jeunes, en les dotant de micro-subventions, de formations en éducation financière, de mentorat et de liens avec les marchés pour créer des entreprises auto-suffisantes.","rw":"Gutera inkunga nyakuri gutangira ku bufatanye bw''ubukungu. Gahunda yacu yo Gutera Inkunga mu Bukungu iteshura ubushobozi bw''imirimo y''ubucuruzi bw''impunzi n''abagize amatsinda y''abakira impunzi cyane cyane abagore n''urubyiruko, ibahoza inkunga nto, amahugurwa y''imari, ubujyanama, n''imitandukire y''isoko kugira ngo bashinge ubucuruzi bwishingira ubwabwo.","ar":"يبدأ التمكين الحقيقي بالاستقلال الاقتصادي. يُطلق برنامجنا للتمكين الاقتصادي الإمكانات الريادية للاجئين وأعضاء المجتمع المضيف، ولا سيما النساء والشباب، من خلال تزويدهم بمنح صغيرة وتدريب على الثقافة المالية والإرشاد والروابط السوقية لبناء أعمال تجارية مستدامة."}'
WHERE section_key LIKE 'program_economic%' OR section_key = 'program_3';

-- ─────────────────────────────────────────────
-- PROGRAM 4 – Social Integration & Peace-building
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Social Integration & Peace-building","fr":"Intégration Sociale et Consolidation de la Paix","rw":"Guhuza Imibereho n''Kubaka Amahoro","ar":"الاندماج الاجتماعي وبناء السلام"}',
  content = '{"en":"SPS promotes social cohesion through dialogue, cultural exchange, and faith-based peace initiatives. We organize community events, intergenerational dialogue sessions, and cultural exchange programs, while advocating for protection, family reunification, and durable solutions for displaced people across the Great Lakes region.","fr":"SPS promeut la cohésion sociale à travers le dialogue, les échanges culturels et les initiatives de paix fondées sur la foi. Nous organisons des événements communautaires, des sessions de dialogue intergénérationnel et des programmes d''échange culturel, tout en plaidant pour la protection, la réunification familiale et des solutions durables pour les personnes déplacées dans la région des Grands Lacs.","rw":"SPS ishyigikira guhuza imibereho binyuze mu biganiro, impinduraburuswa y''ubuhanzi, n''ingamba z''amahoro zishingiye ku idini. Dutegura ibikorwa by''amatsinda, inama z''ikiganiro hagati y''ibihe, n''gahunda z''impinduraburuswa y''ubuhanzi, ndetse tukabwiriza kurindwa, gusubiza hamwe imiryango, n''ibisubizo birambye ku bantu bimukiye mu karere k''Ibiyaga Bigari.","ar":"تعزز SPS التماسك الاجتماعي من خلال الحوار والتبادل الثقافي ومبادرات السلام القائمة على الإيمان. ننظّم فعاليات مجتمعية وجلسات حوار بين الأجيال وبرامج التبادل الثقافي، مع المناصرة للحماية ولمّ شمل الأسرة وإيجاد حلول دائمة للنازحين عبر منطقة البحيرات الكبرى."}'
WHERE section_key LIKE 'program_social%' OR section_key = 'program_4';

-- ─────────────────────────────────────────────
-- TESTIMONIALS HEADER
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Voices from the Ground","fr":"Voix du Terrain","rw":"Amajwi y''Abantu Bacu","ar":"أصوات من الميدان"}',
  content = '{"en":"Real stories from the people we serve across the Great Lakes region.","fr":"Des histoires réelles des personnes que nous servons dans la région des Grands Lacs.","rw":"Inkuru nyakuri z''abantu tukorera mu karere k''Ibiyaga Bigari.","ar":"قصص حقيقية من الناس الذين نخدمهم عبر منطقة البحيرات الكبرى."}'
WHERE section_key = 'testimonials_header';

-- ─────────────────────────────────────────────
-- TESTIMONIAL 1
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Refugee Beneficiary","fr":"Bénéficiaire Réfugié","rw":"Impunzi Yafashijwe","ar":"مستفيد لاجئ"}',
  content = '{"en":"SPS gave me more than a skill — they gave me hope. Through the vocational training program, I started my own small business and now I can support my children. I feel like a person with dignity again.|Great Lakes Region","fr":"SPS m''a donné plus qu''une compétence — ils m''ont donné de l''espoir. Grâce au programme de formation professionnelle, j''ai lancé ma propre petite entreprise et je peux maintenant subvenir aux besoins de mes enfants. Je me sens à nouveau une personne digne.|Région des Grands Lacs","rw":"SPS yanteye inkunga irenze ubuhanga - barampaye ibyiringiro. Binyuze mu gahunda y''amahugurwa y''akazi, natangiye ubucuruzi bwange buto kandi nongeye gutunga abana banjye. Niyumva ndi umuntu w''icyubahiro nanone.|Karere k''Ibiyaga Bigari","ar":"منحتني SPS أكثر من مهارة — منحتني الأمل. من خلال برنامج التدريب المهني، أنشأت مشروعي الصغير الخاص وأستطيع الآن إعالة أطفالي. أشعر أنني شخص كريم مرة أخرى.|منطقة البحيرات الكبرى"}'
WHERE section_key = 'testimonial_1';

-- ─────────────────────────────────────────────
-- TESTIMONIAL 2
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Host Community Member","fr":"Membre de la Communauté d''Accueil","rw":"Umunyamuryango w''Abakira Impunzi","ar":"عضو في المجتمع المضيف"}',
  content = '{"en":"Before SPS opened the health post in our area, we had to walk for hours to reach a clinic. Now pregnant women and children can get care right here. This program has truly saved lives in our village.|Southern Province, Rwanda","fr":"Avant que SPS n''ouvre le poste de santé dans notre région, nous devions marcher pendant des heures pour atteindre une clinique. Maintenant, les femmes enceintes et les enfants peuvent recevoir des soins ici même. Ce programme a vraiment sauvé des vies dans notre village.|Province du Sud, Rwanda","rw":"Mbere yo gufungura inyubako y''ubuzima na SPS mu gace kacu, twagombaga kugenda amasaha menshi kugirango tugere ku ivuriro. Ubu abagore batwite n''abana bashobora kubona serivisi hano hanyu. Gahunda iyi yabonye ubugingo mu mudugudu wacu.|Intara y''Amajyepfo, Rwanda","ar":"قبل أن تفتح SPS مركزاً صحياً في منطقتنا، كنا نمشي لساعات للوصول إلى عيادة. الآن يمكن للأمهات الحوامل والأطفال الحصول على الرعاية هنا مباشرةً. لقد أنقذ هذا البرنامج أرواحاً حقيقية في قريتنا.|المقاطعة الجنوبية، رواندا"}'
WHERE section_key = 'testimonial_2';

-- ─────────────────────────────────────────────
-- NEWSLETTER SECTION
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Stay Connected with SPS","fr":"Restez Connecté avec SPS","rw":"Komeza Gutumanahana na SPS","ar":"ابق على تواصل مع SPS"}',
  content = '{"en":"Join our community and receive updates on our programs, impact stories, and ways you can support refugees across the Great Lakes region.|Enter your email address|Subscribe","fr":"Rejoignez notre communauté et recevez des mises à jour sur nos programmes, des histoires d''impact et des façons dont vous pouvez soutenir les réfugiés dans la région des Grands Lacs.|Entrez votre adresse e-mail|S''abonner","rw":"Injira mu muryango wacu kandi ugire amakuru ku bikorwa byacu, inkuru z''ingaruka, n''uburyo mushobora gufasha impunzi mu karere k''Ibiyaga Bigari.|Injiza aderesi ya imeri yawe|Iyandikishe","ar":"انضم إلى مجتمعنا واحصل على تحديثات حول برامجنا وقصص التأثير وطرق دعم اللاجئين عبر منطقة البحيرات الكبرى.|أدخل عنوان بريدك الإلكتروني|اشترك"}'
WHERE section_key = 'newsletter_section';

-- ─────────────────────────────────────────────
-- ABOUT PAGE SECTIONS
-- ─────────────────────────────────────────────
UPDATE content_sections
SET
  title   = '{"en":"Our Mission","fr":"Notre Mission","rw":"Intego Yacu","ar":"مهمتنا"}',
  content = '{"en":"To strengthen advocacy for human rights especially refugees while designing and implementing sustainable projects shaped by community participation and lived experience.|Founded in 2019 by Melance, a human rights defender who fled persecution in Burundi, SPS was born in a hospital room where he witnessed vulnerable people being denied their fundamental rights. That experience sparked a commitment to stand with the most vulnerable and defend human dignity.","fr":"Renforcer le plaidoyer pour les droits humains, notamment des réfugiés, tout en concevant et en mettant en œuvre des projets durables façonnés par la participation communautaire et l''expérience vécue.|Fondée en 2019 par Melance, un défenseur des droits humains qui a fui les persécutions au Burundi, SPS est née dans une chambre d''hôpital où il a été témoin de personnes vulnérables se voyant refuser leurs droits fondamentaux.","rw":"Gukomeza kugira ijambo mu kubahiriza uburenganzira bwa muntu cyane cyane impunzi, ndetse no gushyiraho no gushyira mu bikorwa imishinga y''igihe kirekire ishingiye ku ngingo z''abaturage n''ubunararibonye.|Yashinzwe mu 2019 na Melance, umurwanashyaka w''uburenganzira bwa muntu wari waragahuye i Burundi, SPS yavutse mu cyumba cy''ibitaro aho yashoboye gukurikirana abantu banze uburenganzira bwabo bw''ibanze.","ar":"تعزيز المناصرة لحقوق الإنسان، لا سيما حقوق اللاجئين، مع تصميم وتنفيذ مشاريع مستدامة تتشكّل من خلال مشاركة المجتمع والتجربة المعاشة.|تأسست عام 2019 على يد ميلانس، مدافع عن حقوق الإنسان فرّ من الاضطهاد في بوروندي، وُلدت SPS في غرفة مستشفى حيث شهد أشخاصاً هشاشين يُحرمون من حقوقهم الأساسية."}'
WHERE section_key = 'about_mission';

UPDATE content_sections
SET
  title   = '{"en":"Our Vision","fr":"Notre Vision","rw":"Inzozi Zacu","ar":"رؤيتنا"}',
  content = '{"en":"A society where human rights are equal for all, no one is left behind, and every voice is heard with dignity, protection and respect.","fr":"Une société où les droits de l''homme sont égaux pour tous, où personne n''est laissé pour compte et où chaque voix est entendue avec dignité, protection et respect.","rw":"Umuryango aho uburenganzira bwa muntu bungana bwa bose, nta n''umwe usigara inyuma, kandi ijwi ryose ryumvikanwa n''icyubahiro, kurindwa no gukiranukira.","ar":"مجتمع تتساوى فيه حقوق الإنسان للجميع، ولا يُترك أحد خلف الركب، وتُسمع كل صوت بكرامة وحماية واحترام."}'
WHERE section_key = 'about_vision';

UPDATE content_sections
SET
  title   = '{"en":"Challenges We Address","fr":"Défis que Nous Abordons","rw":"Ibibazo Dusubiza","ar":"التحديات التي نواجهها"}',
  content = '{"en":"Displacement & Statelessness|Millions in the Great Lakes region remain displaced, stateless, or without legal protection, denied the rights every human deserves.|Limited Access to Services|Refugees and host communities in remote areas lack access to education, healthcare, and economic opportunities essential for dignified living.|Youth Exploitation & Radicalization|Unemployed and marginalized youth are vulnerable to exploitation by those who propagate violence and hatred, threatening fragile community peace.","fr":"Déplacement et Apatridie|Des millions de personnes dans la région des Grands Lacs restent déplacées, apatrides ou sans protection juridique, privées des droits que mérite chaque être humain.|Accès Limité aux Services|Les réfugiés et les communautés d''accueil dans les zones éloignées manquent d''accès à l''éducation, aux soins de santé et aux opportunités économiques essentielles pour une vie digne.|Exploitation et Radicalisation des Jeunes|Les jeunes sans emploi et marginalisés sont vulnérables à l''exploitation par ceux qui propagent la violence et la haine, menaçant la paix fragile des communautés.","rw":"Imyigarure n''Uburetwa|Miliyoni z''abantu mu karere k''Ibiyaga Bigari bakomeza kubana mu myigarure, nta bwenegihugu, cyangwa nta burinzi bwa leta, ntibahabwa uburenganzira bwakwera buri muntu.|Kuburana Serivisi|Impunzi n''amatsinda y''abakira impunzi mu turere tumeze nabi baburana uburezi, ubuzima, n''amahirwe y''ubukungu akenewe kugirango babeho neza.|Gukoresha Urubyiruko n''Gutesha Ibyiringiro|Urubyiruko rudafite akazi n''rwatewe inzitizi ni inzira y''ababizi babona amahirwe yo kubakoresha bubaka urugomo n''inzika, bikagabanya amahoro muri amatsinda.","ar":"التهجير وانعدام الجنسية|يظل ملايين الأشخاص في منطقة البحيرات الكبرى نازحين أو عديمي الجنسية أو بدون حماية قانونية، محرومين من الحقوق التي يستحقها كل إنسان.|محدودية الوصول إلى الخدمات|يفتقر اللاجئون والمجتمعات المضيفة في المناطق النائية إلى التعليم والرعاية الصحية والفرص الاقتصادية الضرورية للعيش بكرامة.|استغلال الشباب والتطرف|يكون الشباب العاطل والمهمّش عرضة للاستغلال من قبل من يروّجون للعنف والكراهية، مما يهدد السلام الهش في المجتمعات."}'
WHERE section_key = 'about_challenges';

UPDATE content_sections
SET
  title   = '{"en":"Our Response","fr":"Notre Réponse","rw":"Igisubizo Cyacu","ar":"استجابتنا"}',
  content = '{"en":"SPS responds with four integrated programs — Education & Vocational Training, Health & Wellness, Economic Empowerment, and Social Integration & Peace-building — each designed and implemented with direct community participation.|As a refugee-led organization, SPS brings a unique advantage: we understand displacement from the inside. Our founders, staff, and volunteers include people who have lived the very experiences we work to address. This lived experience is not a limitation — it is our greatest strength.","fr":"SPS répond avec quatre programmes intégrés — Éducation et Formation Professionnelle, Santé et Bien-Être, Autonomisation Économique, et Intégration Sociale et Consolidation de la Paix — chacun conçu et mis en œuvre avec la participation directe des communautés.|En tant qu''organisation dirigée par des réfugiés, SPS apporte un avantage unique: nous comprenons le déplacement de l''intérieur.","rw":"SPS isubiza binyuze gahunda enye zihujwe — Uburezi n''Amahugurwa y''Akazi, Ubuzima n''Imibereho Myiza, Gutera Inkunga mu Bukungu, no Guhuza Imibereho n''Kubaka Amahoro — buri kimwe gishyirwaho no gushyirwa mu bikorwa hamwe n''ubufatanye bw''abaturage.|Nk''umuryango uyoborwa n''impunzi, SPS igumanye inyungu yihariye: tusobanukirwa imyigarure uhereye imbere.","ar":"تستجيب SPS بأربعة برامج متكاملة — التعليم والتدريب المهني، الصحة والرفاهية، التمكين الاقتصادي، والاندماج الاجتماعي وبناء السلام — كل منها مصمَّم ومنفَّذ بمشاركة مجتمعية مباشرة.|بوصفها منظمةً يقودها اللاجئون، تمتلك SPS ميزةً فريدة: نفهم التهجير من الداخل."}'
WHERE section_key = 'about_response';

UPDATE content_sections
SET
  title   = '{"en":"Our Core Values","fr":"Nos Valeurs Fondamentales","rw":"Indangagaciro Zacu","ar":"قيمنا الأساسية"}',
  content = '{"en":"Dignity|We uphold the inherent worth and dignity of every person, regardless of status or background.|Solidarity|We stand with those who are marginalized, displaced, and forgotten — because no one should face their struggles alone.|Resilience|We believe in the capacity of communities to recover, adapt, and grow stronger in the face of adversity.|Participation|We design and implement every program with direct community input, because those affected know best what they need.","fr":"Dignité|Nous défendons la valeur inhérente et la dignité de chaque personne, quelle que soit sa situation ou son origine.|Solidarité|Nous nous tenons aux côtés de ceux qui sont marginalisés, déplacés et oubliés — parce que personne ne devrait faire face à ses luttes seul.|Résilience|Nous croyons en la capacité des communautés à se remettre, à s''adapter et à devenir plus fortes face à l''adversité.|Participation|Nous concevons et mettons en œuvre chaque programme avec une contribution directe de la communauté.","rw":"Icyubahiro|Duharanira agaciro gasanzwe n''icyubahiro cya buri muntu, nta ngiracyogita ku bihe cyangwa inkomoko.|Ubumwe|Duhagarara aho abantu batewe inzitizi, bimukiwe, kandi babagiwe — kuko nta wambaye guhangana n''ibibazo bye wenyine.|Gukomera|Twemera ubushobozi bw''amatsinda bwo gukira, guhuza, no kongera gukomera imbere y''ibibazo.|Ubufatanye|Gushyiraho no gushyira mu bikorwa buri gahunda hamwe n''ubushobozi bw''abaturage bwa kuri, kuko abakiriweho babizi neza icyo bakeneye.","ar":"الكرامة|نحافظ على القيمة الجوهرية لكل إنسان وكرامته بصرف النظر عن وضعه أو خلفيته.|التضامن|نقف مع المهمّشين والنازحين والمنسيين — لأنه لا ينبغي لأحد أن يواجه نضاله وحده.|الصمود|نؤمن بقدرة المجتمعات على التعافي والتكيّف والتقوية في مواجهة الشدائد.|المشاركة|نصمّم وننفّذ كل برنامج بإسهام مجتمعي مباشر، لأن المتضررين يعرفون الأفضل ما يحتاجونه."}'
WHERE section_key = 'about_values';

-- ─────────────────────────────────────────────
-- HERO SLIDES – update titles & subtitles
-- ─────────────────────────────────────────────
UPDATE hero_slides
SET
  title    = '{"en":"Spirit of Peace and Solidarity","fr":"Esprit de Paix et de Solidarité","rw":"Umwuka w''Amahoro n''Ubumwe","ar":"روح السلام والتضامن"}',
  subtitle = '{"en":"A refugee-led humanitarian organization empowering displaced communities across the Great Lakes region since 2019.","fr":"Une organisation humanitaire dirigée par des réfugiés, autonomisant les communautés déplacées dans la région des Grands Lacs depuis 2019.","rw":"Umuryango w''ubufasha bw''ikiremwamuntu uyoborwa n''impunzi, utera inkunga amatsinda yimukiwe mu karere k''Ibiyaga Bigari kuva 2019.","ar":"منظمة إنسانية يقودها اللاجئون لتمكين المجتمعات النازحة عبر منطقة البحيرات الكبرى منذ عام 2019."}'
WHERE order_index = 1;

UPDATE hero_slides
SET
  title    = '{"en":"Refugees Are Not a Burden — They Are a Resource","fr":"Les Réfugiés Ne Sont Pas un Fardeau — Ils Sont une Ressource","rw":"Impunzi Si Umutwaro — Ni Umuryango","ar":"اللاجئون ليسوا عبئاً — بل هم مورد"}',
  subtitle = '{"en":"We empower refugees especially women, children, and youth to design and lead sustainable solutions for their own communities.","fr":"Nous autonomisons les réfugiés, notamment les femmes, les enfants et les jeunes, pour concevoir et diriger des solutions durables pour leurs propres communautés.","rw":"Tutera inkunga impunzi cyane cyane abagore, abana, n''urubyiruko kugira ngo bashyireho no kuyobora ibisubizo birambye ku matsinda yabo.","ar":"نمكّن اللاجئين، لا سيما النساء والأطفال والشباب، من تصميم وقيادة حلول مستدامة لمجتمعاتهم الخاصة."}'
WHERE order_index = 2;

UPDATE hero_slides
SET
  title    = '{"en":"Built from Lived Experience","fr":"Construit à partir de l''Expérience Vécue","rw":"Wubatswe ku Bunararibonye","ar":"بُني من التجربة المعاشة"}',
  subtitle = '{"en":"Founded in a hospital room by a refugee human rights defender, SPS turns personal pain into collective purpose.","fr":"Fondée dans une chambre d''hôpital par un défenseur des droits humains réfugié, SPS transforme la douleur personnelle en objectif collectif.","rw":"Yashyizweho mu cyumba cy''ibitaro n''impunzi yarwanashyaka w''uburenganzira bwa muntu, SPS ihindura ububabare bwite intego rusange.","ar":"تأسست في غرفة مستشفى على يد مدافع عن حقوق الإنسان لاجئ، وتحوّل SPS الألم الشخصي إلى هدف جماعي."}'
WHERE order_index = 3;
