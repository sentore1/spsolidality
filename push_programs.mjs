// SPS Program Content Update Script
const BASE = "https://vfmkywrvwoexahwemtad.supabase.co/rest/v1";
const KEY  = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZmbWt5d3J2d29leGFod2VtdGFkIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4ODc4MDMwMywiZXhwIjoyMTA0MzU2MzAzfQ.3FoBMTcnl1qHrcDU10ftkxEEQvFHF749T97Uho64wvA";

const HEADERS = {
  "apikey": KEY,
  "Authorization": `Bearer ${KEY}`,
  "Content-Type": "application/json",
  "Prefer": "return=minimal"
};

async function patch(sectionKey, data) {
  const res = await fetch(
    `${BASE}/content_sections?section_key=eq.${sectionKey}`,
    { method: "PATCH", headers: HEADERS, body: JSON.stringify(data) }
  );
  console.log(`[${res.status}] ${sectionKey}`);
  if (!res.ok) {
    const body = await res.text();
    console.error(`  ERROR: ${body}`);
  }
}

async function deleteRow(sectionKey) {
  const res = await fetch(
    `${BASE}/content_sections?section_key=eq.${sectionKey}`,
    { method: "DELETE", headers: HEADERS }
  );
  console.log(`[${res.status}] DELETE ${sectionKey}`);
}

// ─────────────────────────────────────────────────────────────
// PROGRAMS HEADER
// ─────────────────────────────────────────────────────────────
await patch("programs_header", {
  title: {
    en: "Our Programs",
    fr: "Nos Programmes",
    rw: "Gahunda Zacu",
    ar: "برامجنا"
  },
  content: {
    en: "Spirit of Peace and Solidarity implements four core programs, each designed and led with direct community participation, responding to the real and urgent needs of refugees and host communities across the Great Lakes region.",
    fr: "Spirit of Peace and Solidarity met en oeuvre quatre programmes fondamentaux, chacun concu et dirige avec la participation directe des communautes, repondant aux besoins reels et urgents des refugies et des communautes d'accueil dans la region des Grands Lacs.",
    rw: "Spirit of Peace and Solidarity ishyira mu bikorwa gahunda enye z'ibanze, buri kimwe gishyirwaho hamwe n'ubufatanye bw'abaturage, zisubiza ibihe byihutirwa by'impunzi n'amatsinda y'abakira impunzi mu karere k'Ibiyaga Bigari.",
    ar: "تنفّذ Spirit of Peace and Solidarity أربعة برامج أساسية، كل منها مصمَّم ومُدار بمشاركة مجتمعية مباشرة، استجابةً للاحتياجات الحقيقية والعاجلة للاجئين والمجتمعات المضيفة عبر منطقة البحيرات الكبرى."
  }
});

// ─────────────────────────────────────────────────────────────
// PROGRAM 1 — Education and Vocational Training
// ─────────────────────────────────────────────────────────────
await patch("program_education", {
  title: {
    en: "Education and Vocational Training",
    fr: "Éducation et Formation Professionnelle",
    rw: "Uburezi n'Amahugurwa y'Akazi",
    ar: "التعليم والتدريب المهني"
  },
  content: {
    en: "Empowering Minds, Transforming Lives. At SPS, we believe that education is not a privilege — it is a fundamental right and a powerful tool for change. For refugees and members of the host community, access to quality education and vocational training is not only a pathway out of poverty, but a critical bridge to dignity, self-reliance, and long-term peace. Through this program, SPS is committed to breaking the cycle of dependency by equipping individuals — especially youth and women — with the knowledge, skills, and confidence they need to take control of their futures. We offer inclusive, practical, and transformative learning opportunities that respond to real needs in our communities. This program is built on the belief that displaced people are not a burden but a resource. With the right support, refugees and marginalized youth can become the innovators, educators, and leaders who will shape a better future for all. At SPS, we are not just teaching skills — we are nurturing dreams, restoring hope, and building a future where every person can thrive through the power of education and vocational empowerment.",
    fr: "Autonomiser les esprits, transformer les vies. Chez SPS, nous croyons que l'éducation n'est pas un privilège — c'est un droit fondamental et un outil puissant de changement. Pour les réfugiés et les membres de la communauté d'accueil, l'accès à une éducation de qualité et à la formation professionnelle est non seulement une voie de sortie de la pauvreté, mais un pont essentiel vers la dignité, l'autonomie et la paix durable. SPS brise le cycle de la dépendance en dotant les individus — en particulier les jeunes et les femmes — des connaissances, des compétences et de la confiance dont ils ont besoin. Nous ne faisons pas qu'enseigner des compétences — nous nourrissons des rêves, restaurons l'espoir et construisons un avenir où chaque personne peut s'épanouir.",
    rw: "Gutera Inkunga Imitwe, Guhindura Ubuzima. Kuri SPS, twemera ko uburezi si ubuserure — ni uburenganzira bw'ibanze n'igikoresho cy'imbaraga cy'impinduka. Impunzi n'abagize amatsinda y'abakira impunzi, uburezi bw'inzobere n'amahugurwa y'akazi ni inzira yo gusohoka mu bukene no kunyura ku cyubahiro, kwikira, n'amahoro arambye. SPS isenya inzitizi z'gushingira ku bandi ihanga abantu — cyane cyane urubyiruko n'abagore — ibikoresho by'ubumenyi n'ubuhanga. Ntabwo gusa twigisha ubuhanga — ahubwo turisha inzozi, gusubiza ibyiringiro, no kubaka ejo hazaza aho umuntu wese ashobora gutera imbere.",
    ar: "تمكين العقول وتحويل الحياة. في SPS نؤمن بأن التعليم ليس امتيازاً — بل هو حق أساسي وأداة قوية للتغيير. للاجئين وأعضاء المجتمع المضيف، يُعدّ الحصول على تعليم جيد وتدريب مهني طريقاً للخروج من الفقر وجسراً حيوياً نحو الكرامة والاعتماد على الذات والسلام الدائم. تلتزم SPS بكسر دائرة الاعتماد من خلال تزويد الأفراد — لا سيما الشباب والنساء — بالمعرفة والمهارات والثقة اللازمة للتحكم في مستقبلهم. نحن لا نعلّم المهارات فحسب — بل نرعى الأحلام ونعيد الأمل ونبني مستقبلاً يزدهر فيه كل شخص."
  }
});

// ─────────────────────────────────────────────────────────────
// PROGRAM 2 — Health and Wellness  (section_key: program_family_protection)
// ─────────────────────────────────────────────────────────────
await patch("program_family_protection", {
  title: {
    en: "Health and Wellness",
    fr: "Santé et Bien-Être",
    rw: "Ubuzima n'Imibereho Myiza",
    ar: "الصحة والرفاهية"
  },
  content: {
    en: "At SPS, we believe that access to healthcare is not a privilege — it is a fundamental human right. Yet in many remote and underserved areas, especially where refugees and rural populations live, this right remains far out of reach. Our Health and Wellness program was born from the urgent need to close this gap. In partnership with local governments and the Ministry of Health, SPS manages both first and second generation health posts in hard-to-reach communities — places where walking several hours to the nearest health center is still a painful daily reality for pregnant women, children, and the elderly. Our mission: to reduce infant mortality, protect mothers, and ensure that no one dies simply because they couldn't reach a health facility in time. Our approach is Community-Centered, bringing services directly to people in remote areas. We collaborate with Government to align with national health strategies. We prioritize Health Equity for pregnant women, children, and at-risk groups. We deliver Preventive and Curative Services including vaccinations, prenatal care, and chronic disease management. We invest in Capacity Building by training local health workers. And every intervention is grounded in Empathy — aiming not only to treat illness but to restore dignity and hope.",
    fr: "Chez SPS, nous croyons que l'accès aux soins de santé n'est pas un privilège — c'est un droit humain fondamental. Dans de nombreuses zones reculées, notamment là où vivent les réfugiés, ce droit reste hors de portée. Notre programme Santé et Bien-Être est né de l'urgence de combler ce fossé. En partenariat avec les gouvernements locaux et le Ministère de la Santé, SPS gère des postes de santé dans des communautés difficiles d'accès. Notre mission : réduire la mortalité infantile, protéger les mères et s'assurer que personne ne meurt parce qu'il n'a pas pu atteindre un établissement de santé à temps. Notre approche est centrée sur la communauté, collaborative avec le gouvernement, axée sur l'équité en santé, et ancrée dans la compassion.",
    rw: "Kuri SPS, twemera ko uburenganzira bwo kubona serivisi z'ubuzima si ubuserure — ni uburenganzira bw'ibanze bwa muntu. Mu turere tumete nabi, cyane cyane aho impunzi n'abaturage b'inzuzi babana, uburenganzira bwo kubona ubuzima buracyari kure. Gahunda yacu y'Ubuzima n'Imibereho Myiza yavutse kubera impamvu y'ihutirwa yo gusana urubura rw'ubuzima. Mu bufatanye n'inzego z'igihugu n'Ubuzima bw'Igihugu, SPS igenzura amavuriro yo muri mbere n'iya kabiri mu turere tumeze nabi. Intego yacu: kugabanya urupfu rw'abana bato, kurinda umubyeyi, no kwirinda ko n'umwe apfa kubera gusa ko yabuze guhera ku ivuriro mu gihe.",
    ar: "في SPS نؤمن بأن الحصول على الرعاية الصحية ليس امتيازاً — بل هو حق إنساني أساسي. في المناطق النائية التي يعيش فيها اللاجئون والسكان الريفيون، لا يزال هذا الحق بعيد المنال. وُلد برنامج الصحة والرفاهية من الحاجة الملحة لسد هذه الفجوة. بالشراكة مع الحكومات المحلية ووزارة الصحة، تدير SPS مراكز صحية في المجتمعات النائية. مهمتنا: تقليل وفيات الأطفال، وحماية الأمهات، وضمان ألا يموت أحد لمجرد أنه لم يتمكن من الوصول إلى منشأة صحية في الوقت المناسب. نهجنا يرتكز على خدمة المجتمع والتعاون الحكومي والعدالة الصحية والرعاية الشاملة والتعاطف في كل تدخل."
  }
});

// ─────────────────────────────────────────────────────────────
// PROGRAM 3 — Economic Empowerment  (section_key: program_women_youth)
// ─────────────────────────────────────────────────────────────
await patch("program_women_youth", {
  title: {
    en: "Economic Empowerment",
    fr: "Autonomisation Économique",
    rw: "Gutera Inkunga mu Bukungu",
    ar: "التمكين الاقتصادي"
  },
  content: {
    en: "At SPS, we believe that true empowerment begins with economic independence. In communities affected by displacement and poverty, the ability to earn a stable income is not just a livelihood — it is a pathway to dignity, resilience, and lasting peace. Our Economic Empowerment Program is designed to unleash the entrepreneurial potential of refugees and host community members — especially women and youth — by equipping them with the tools, knowledge, and support needed to build self-sustaining businesses. We don't just offer training. We walk the journey with our beneficiaries from the first spark of an idea to a thriving, market-ready business. We facilitate access to micro-grants, small loans, and community-based savings groups. We deliver entrepreneurship and financial literacy training tailored to the local context. We provide ongoing mentorship and coaching. We link businesses to markets through product standardization, branding, and value chain development. And we foster cooperatives and group businesses for peer-to-peer learning and shared investment. Our vision is to create a generation of confident, self-reliant entrepreneurs who break the cycle of dependency. We see every refugee not as a victim but as a visionary. Every woman not as a beneficiary but as a builder of community wealth. Every youth not as unemployed but as an innovator ready to rise.",
    fr: "Chez SPS, nous croyons que le vrai autonomisation commence par l'indépendance économique. Dans les communautés touchées par le déplacement et la pauvreté, la capacité à gagner un revenu stable est une voie vers la dignité, la résilience et la paix durable. Notre Programme d'Autonomisation Économique libère le potentiel entrepreneurial des réfugiés et des membres de la communauté d'accueil — surtout les femmes et les jeunes. Nous facilitons l'accès aux micro-subventions, dispensons des formations en entrepreneuriat, fournissons un mentorat continu, relions les entreprises aux marchés et favorisons les coopératives. Nous voyons chaque réfugié non comme une victime mais comme un visionnaire.",
    rw: "Kuri SPS, twemera ko gutera inkunga nyakuri gutangira ku bufatanye bw'ubukungu. Mu matsinda akurikirana imyigarure n'ubukene, ubushobozi bwo kubona amafaranga birambye ni inzira y'icyubahiro, ubushobozi, n'amahoro arambye. Gahunda yacu yo Gutera Inkunga mu Bukungu iteshura ubushobozi bw'imirimo y'ubucuruzi bw'impunzi n'abagize amatsinda — cyane cyane abagore n'urubyiruko. Ntabwo tuha amahugurwa gusa. Tugerageza hamwe n'abahabwa inkunga yacu uhereye ku gitekerezo gishya kugeza ku bucuruzi budashobora gusiga isoko. Dufasha kubona inkunga nto, amahugurwa y'imirimo n'ubukungu, ubujyanama, imitandukire y'isoko, no gushyiraho amakoperative.",
    ar: "في SPS نؤمن بأن التمكين الحقيقي يبدأ بالاستقلال الاقتصادي. في المجتمعات المتضررة من التهجير والفقر، القدرة على كسب دخل مستقر ليست مجرد معيشة — بل هي طريق نحو الكرامة والصمود والسلام الدائم. برنامج التمكين الاقتصادي لدينا يُطلق الإمكانات الريادية للاجئين وأعضاء المجتمع المضيف — لا سيما النساء والشباب. نحن لا نقدم تدريباً فحسب — نمشي في الرحلة معهم من أول فكرة إلى عمل تجاري مزدهر. نيسّر الوصول إلى المنح الصغيرة والقروض، ونقدم تدريباً على ريادة الأعمال، ونوفر إرشاداً مستمراً، ونربط الأعمال بالأسواق، ونعزز التعاونيات. نرى كل لاجئ صاحب رؤية لا ضحية."
  }
});

// ─────────────────────────────────────────────────────────────
// PROGRAM 4 — Social Integration, Peace-building and Humanitarian Aid
//             (section_key: program_social_protection)
// ─────────────────────────────────────────────────────────────
await patch("program_social_protection", {
  title: {
    en: "Social Integration, Peace-building and Humanitarian Aid",
    fr: "Intégration Sociale, Consolidation de la Paix et Aide Humanitaire",
    rw: "Guhuza Imibereho, Kubaka Amahoro n'Ubufasha bw'Ikiremwamuntu",
    ar: "الاندماج الاجتماعي وبناء السلام والمساعدة الإنسانية"
  },
  content: {
    en: "SPS promotes social cohesion through dialogue, cultural exchange, and faith-based peace initiatives. We also respond to humanitarian emergencies by providing temporary support to displaced families and advocating for protection, family reunification, and durable solutions. This program is designed to bridge divides, heal wounds, and build lasting unity between refugees and host communities across the Great Lakes region. Founded and led by refugees, SPS is uniquely positioned to address the root causes of division and displacement. We understand, from lived experience, how conflict, discrimination, and exclusion have torn apart communities and forced countless individuals to flee their homes. Too often, unemployed and marginalized youth are exploited by those who propagate violence and hatred. That is why we stand for peace — not just as a slogan but as an active, daily commitment. We believe every individual — especially youth — is a catalyst of change and an innovator in their community. Through this program we organize community events that celebrate diversity and foster togetherness; intergenerational and interfaith dialogue sessions that open minds and break down harmful ideologies; and cultural exchange programs that create opportunities for shared experiences, learning, and trust-building. Our peace-building work also extends to advocating for the rights and protection of displaced people including family reunification, resettlement opportunities, and the protection of unaccompanied children.",
    fr: "SPS promeut la cohésion sociale à travers le dialogue, les échanges culturels et les initiatives de paix basées sur la foi. Nous répondons également aux urgences humanitaires en soutenant les familles déplacées et en plaidant pour la protection, la réunification familiale et des solutions durables. Ce programme vise à combler les divisions, guérir les blessures et construire une unité durable entre réfugiés et communautés d'accueil dans la région des Grands Lacs. Fondé et dirigé par des réfugiés, SPS est uniquement positionné pour s'attaquer aux causes profondes de la division et du déplacement. Nous organisons des événements communautaires, des sessions de dialogue intergénérationnel et interculturel, et des programmes d'échange culturel. Notre travail de consolidation de la paix s'étend également au plaidoyer pour la protection des personnes déplacées.",
    rw: "SPS ishyigikira guhuza imibereho binyuze mu biganiro, impinduraburuswa y'ubuhanzi, n'ingamba z'amahoro zishingiye ku idini. Kandi tusubiza impanuka z'ubufasha bw'ikiremwamuntu dufasha imiryango yimukiwe mu gihe gito ndetse tukabwiriza kurindwa, gusubiza hamwe imiryango, n'ibisubizo birambye. Gahunda iyi ishyizweho kugira ngo isane urubura, ikire ibikomere, ikubaka ubumwe burambye hagati y'impunzi n'amatsinda y'abakira impunzi mu karere k'Ibiyaga Bigari. Dutegura ibikorwa by'amatsinda bishimangira ubwiyunge, inama z'ikiganiro hagati y'ibihe n'amadini, n'gahunda z'impinduraburuswa y'ubuhanzi.",
    ar: "تعزز SPS التماسك الاجتماعي من خلال الحوار والتبادل الثقافي ومبادرات السلام القائمة على الإيمان. كما نستجيب للطوارئ الإنسانية بتقديم الدعم المؤقت للأسر النازحة والمناصرة للحماية ولمّ شمل الأسرة والحلول الدائمة. هذا البرنامج مصمَّم لسد الفجوات وشفاء الجروح وبناء وحدة دائمة بين اللاجئين والمجتمعات المضيفة في منطقة البحيرات الكبرى. بوصفها منظمةً أُسست وتُدار من قِبل اللاجئين، تتمتع SPS بمركز فريد لمعالجة الأسباب الجذرية للانقسام والتهجير. ننظّم فعاليات مجتمعية وجلسات حوار بين الأجيال والأديان وبرامج التبادل الثقافي. يمتد عملنا في بناء السلام أيضاً إلى المناصرة لحقوق النازحين."
  }
});

console.log("\n✅ All 4 SPS programs updated successfully!");

// Verify
const verify = await fetch(
  `${BASE}/content_sections?section_key=like.program*&select=section_key,title&order=section_key.asc`,
  { headers: { "apikey": KEY, "Authorization": `Bearer ${KEY}` } }
);
const rows = await verify.json();
console.log("\nVerification:");
for (const r of rows) {
  console.log(`  ${r.section_key}: ${r.title?.en}`);
}
