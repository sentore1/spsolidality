'use client';
import Image from "next/image";
import { useTranslations } from 'next-intl';
import Navigation from "../../components/Navigation";
import Footer from "../../components/Footer";

export default function TeamsPage() {
  const t = useTranslations('teamsPage');
  const teamMembers = [
    { name: "Kantengwa Marie Odette", role: "Visionary of Helping Heart Family Rwanda", image: "/team/Kantengwa Marie Odette.jpeg" },
    { name: "Rwikaza Gentil", role: "Co-Founder and Executive Director, Helping Heart Family Rwanda", image: "/team/Rwikaza Gentil.jpg" },
    { name: "Uwamahoro Diane", role: "Deputy Executive Director, Helping Heart Family Rwanda", image: "/team/Uwamahoro Diane.jpg" },
    { name: "Banamwana Yvonne", role: "General Secretary, Helping Heart Family Rwanda", image: "/team/Banamwana Yvonne.jpg" },
    { name: "UMUHOZA Ana", role: "Administration & Finance Manager, Helping Heart Family Rwanda", image: "/team/UMUHOZA Ana.png" },
    { name: "UMUHOZA Eduige", role: "Audit Committee, Helping Heart Family Rwanda", image: "/team/UMUHOZA Eduige.jpg" },
    { name: "Geofrey MUKUNDANE", role: "Audit Committee, Helping Heart Family Rwanda", image: "/team/Geofrey MUKUNDANE.jpg" },
    { name: "NIYOMUGABO Felicier", role: "Advisor, Helping Heart Family Rwanda", image: "/team/NIYOMUGABO Felicier.jpg" },
    { name: "NIYONSABA Yvette", role: "Advisor, Helping Heart Family Rwanda", image: "/team/NIYONSABA Yvette.jpg" },
    { name: "Merveille Jedidja AZABE", role: "Advisor, Helping Heart Family Rwanda", image: "/team/Merveille Jedidja AZABE.jpeg" },
    { name: "IRAKOZE Eric", role: "Conflict Resolution Committee, Helping Heart Family Rwanda", image: "/team/IRAKOZE Eric.jpg" },
    { name: "UWIMANA Jeannette", role: "Conflict Resolution Committee, Helping Heart Family Rwanda", image: "/team/UWIMANA Jeannette.jpg" },
    { name: "UWAMAHORO Blandine", role: "Conflict Resolution Committee, Helping Heart Family Rwanda", image: "/team/UWAMAHORO Blandine.jpg" },
  ];

  return (
    <div className="min-h-screen bg-gray-50">
      <Navigation logoWhite={true} />
      <div className="relative h-[400px] overflow-hidden" style={{background: 'linear-gradient(135deg, #313194, #27277a, #1e1f6b)'}}>
        <div className="absolute inset-0 bg-black/20"></div>
        <div className="absolute inset-0 flex flex-col items-center justify-center text-center px-4 z-10">
          <h1 className="text-5xl font-bold text-white">{t('hero')}</h1>
        </div>
      </div>

      <div className="max-w-7xl mx-auto px-4 py-16">
        <div className="text-center mb-16">
          <h2 className="text-4xl font-bold mb-4 text-gray-800">{t('heroDesc')}</h2>
          <p className="text-xl text-gray-600">{t('subtitle')}</p>
        </div>

        <div className="grid md:grid-cols-4 sm:grid-cols-2 gap-8">
          {teamMembers.map((member, index) => (
            <div key={index} className="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
              <div className="relative h-64">
                <Image 
                  src={member.image} 
                  alt={member.name} 
                  fill
                  className="object-cover"
                />
              </div>
              <div className="p-4 text-center">
                <h3 className="font-bold text-lg text-gray-800">{member.name}</h3>
                <p className="text-sm text-gray-600 mt-2">{member.role}</p>
              </div>
            </div>
          ))}
        </div>

        <div className="mt-20 p-12 rounded-lg text-center" style={{backgroundColor: '#f0f0fa'}}>
          <h3 className="text-3xl font-bold mb-4 text-gray-800">{t('joinTeam')}</h3>
          <p className="text-gray-600 mb-6 max-w-2xl mx-auto">
            {t('joinTeamDesc')}
          </p>
          <button className="text-white px-8 py-3 rounded-full font-semibold hover:opacity-90 transition" style={{backgroundColor: '#313194'}}>
            {t('viewOpportunities')}
          </button>
        </div>
      </div>
      <Footer />
    </div>
  );
}
