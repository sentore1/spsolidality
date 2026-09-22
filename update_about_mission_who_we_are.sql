-- =============================================================
-- UPDATE WHO WE ARE SECTION ON ABOUT PAGE
-- Replace the mission section content with new organizational description
-- =============================================================

UPDATE content_sections
SET
  title   = '{"en":"Our Mission","fr":"Notre Mission","rw":"Intego Yacu","ar":"مهمتنا"}',
  content = '{"en":"To strengthen advocacy for human rights especially refugees while designing and implementing sustainable projects shaped by community participation and lived experience.|Founded in 2019, Spirit of Peace and Solidarity (SPS) is an humanitarian refugee-led organization (RLO) supporting refugees and host communities within vulnerable situation across the Great Lakes region. SPS works to ensure that the rights of displaced and at-risk populations are respected with dignity, while promoting resilience, peace, and sustainable development. Rooted in lived experience of displacement, SPS believes that refugees are not passive beneficiaries but active agents of change. Our work focuses on empowering refugees especially women, children, and youth to design and lead sustainable solutions that respond to the needs of their own communities.","fr":"Renforcer le plaidoyer pour les droits humains, notamment des réfugiés, tout en concevant et en mettant en œuvre des projets durables façonnés par la participation communautaire et l''expérience vécue.|Fondée en 2019 par Melance, un défenseur des droits humains qui a fui les persécutions au Burundi, SPS est née dans une chambre d''hôpital où il a été témoin de personnes vulnérables se voyant refuser leurs droits fondamentaux.","rw":"Gukomeza kugira ijambo mu kubahiriza uburenganzira bwa muntu cyane cyane impunzi, ndetse no gushyiraho no gushyira mu bikorwa imishinga y''igihe kirekire ishingiye ku ngingo z''abaturage n''ubunararibonye.|Yashinzwe mu 2019 na Melance, umurwanashyaka w''uburenganzira bwa muntu wari waragahuye i Burundi, SPS yavutse mu cyumba cy''ibitaro aho yashoboye gukurikirana abantu banze uburenganzira bwabo bw''ibanze.","ar":"تعزيز المناصرة لحقوق الإنسان، لا سيما حقوق اللاجئين، مع تصميم وتنفيذ مشاريع مستدامة تتشكّل من خلال مشاركة المجتمع والتجربة المعاشة.|تأسست عام 2019 على يد ميلانس، مدافع عن حقوق الإنسان فرّ من الاضطهاد في بوروندي، وُلدت SPS في غرفة مستشفى حيث شهد أشخاصاً هشاشين يُحرمون من حقوقهم الأساسية."}'
WHERE section_key = 'about_mission';

-- Verify the update
SELECT section_key, title, content 
FROM content_sections 
WHERE section_key = 'about_mission';
