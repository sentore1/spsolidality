'use client';
import Image from "next/image";
import Navigation from "../../components/Navigation";
import Footer from "../../components/Footer";
import { Link } from '@/i18n/routing';
import {useTranslations} from 'next-intl';

export default function ProgramsPage() {
  const t = useTranslations('programsPage');

  return (
    <div className="min-h-screen bg-white">
      <Navigation logoWhite={true} />

      {/* Hero */}
      <div className="relative h-[400px] overflow-hidden" style={{background: 'linear-gradient(135deg, #313194, #27277a, #1e1f6b)'}}>
        <div className="absolute inset-0 bg-black/20"></div>
        <div className="absolute inset-0 flex flex-col items-center justify-center text-center px-4 z-10">
          <p className="text-sm font-semibold uppercase tracking-widest text-white/70 mb-3">{t('heroLabel')}</p>
          <h1 className="text-5xl md:text-7xl font-bold text-white mb-6">{t('hero')}</h1>
          <p className="text-lg md:text-2xl text-white/90 max-w-3xl">{t('heroDesc')}</p>
        </div>
      </div>

      {/* Intro */}
      <div className="max-w-5xl mx-auto px-4 py-16 text-center">
        <p className="text-lg md:text-xl text-gray-600 leading-relaxed">{t('intro')}</p>
      </div>

      <div className="max-w-7xl mx-auto px-4 pb-24 space-y-32">

        {/* Program 1 — Education & Vocational Training */}
        <div>
          <div className="flex flex-col lg:flex-row gap-12 items-start">
            <div className="lg:w-1/2">
              <div className="relative h-[420px] overflow-hidden shadow-2xl">
                <Image src="/Education and Vocational Training/w5.png" alt="Education and Vocational Training" fill className="object-cover" />
                <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                <div className="absolute bottom-6 left-6">
                  <span className="text-xs font-bold uppercase tracking-widest text-white/80">Program 01</span>
                </div>
              </div>
            </div>
            <div className="lg:w-1/2 pt-4">
              <span className="inline-block text-xs font-bold uppercase tracking-widest mb-4" style={{color: '#313194'}}>{t('program1Label')}</span>
              <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">{t('program1Title')}</h2>
              <p className="text-base text-gray-500 font-medium mb-6 italic">{t('program1Subtitle')}</p>
              <p className="text-gray-600 leading-relaxed mb-4">{t('program1Desc1')}</p>
              <p className="text-gray-600 leading-relaxed mb-4">{t('program1Desc2')}</p>
              <p className="text-gray-600 leading-relaxed">{t('program1Desc3')}</p>
            </div>
          </div>
        </div>

        {/* Program 2 — Health & Wellness */}
        <div>
          <div className="flex flex-col lg:flex-row-reverse gap-12 items-start">
            <div className="lg:w-1/2">
              <div className="relative h-[420px] overflow-hidden shadow-2xl">
                <Image src="/Health and Wellness/health-and-wellness.jpeg" alt="Health and Wellness" fill className="object-cover" />
                <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                <div className="absolute bottom-6 left-6">
                  <span className="text-xs font-bold uppercase tracking-widest text-white/80">Program 02</span>
                </div>
              </div>
            </div>
            <div className="lg:w-1/2 pt-4">
              <span className="inline-block text-xs font-bold uppercase tracking-widest mb-4" style={{color: '#313194'}}>{t('program2Label')}</span>
              <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">{t('program2Title')}</h2>
              <p className="text-gray-600 leading-relaxed mb-4">{t('program2Desc1')}</p>
              <p className="text-gray-600 leading-relaxed mb-6">{t('program2Desc2')}</p>

              <h3 className="text-lg font-bold text-gray-900 mb-4">{t('ourApproach')}</h3>
              <div className="space-y-3">
                {[
                  t('health_approach1'),
                  t('health_approach2'),
                  t('health_approach3'),
                  t('health_approach4'),
                  t('health_approach5'),
                  t('health_approach6'),
                ].map((item, i) => (
                  <div key={i} className="flex items-start gap-3">
                    <div className="w-5 h-5 flex-shrink-0 mt-0.5 flex items-center justify-center" style={{backgroundColor: '#313194'}}>
                      <svg className="w-3 h-3 text-white" fill="currentColor" viewBox="0 0 20 20">
                        <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd"/>
                      </svg>
                    </div>
                    <span className="text-gray-600 text-sm leading-relaxed">{item}</span>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>

        {/* Program 3 — Economic Empowerment */}
        <div>
          <div className="flex flex-col lg:flex-row gap-12 items-start">
            <div className="lg:w-1/2">
              <div className="relative h-[420px] overflow-hidden shadow-2xl">
                <Image src="/Economic Empowerment/34.jpg" alt="Economic Empowerment" fill className="object-cover" />
                <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                <div className="absolute bottom-6 left-6">
                  <span className="text-xs font-bold uppercase tracking-widest text-white/80">Program 03</span>
                </div>
              </div>
            </div>
            <div className="lg:w-1/2 pt-4">
              <span className="inline-block text-xs font-bold uppercase tracking-widest mb-4" style={{color: '#313194'}}>{t('program3Label')}</span>
              <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">{t('program3Title')}</h2>
              <p className="text-gray-600 leading-relaxed mb-4">{t('program3Desc1')}</p>
              <p className="text-gray-600 leading-relaxed mb-6">{t('program3Desc2')}</p>

              <h3 className="text-lg font-bold text-gray-900 mb-4">{t('ourApproach')}</h3>
              <div className="space-y-3">
                {[
                  t('econ_approach1'),
                  t('econ_approach2'),
                  t('econ_approach3'),
                  t('econ_approach4'),
                  t('econ_approach5'),
                ].map((item, i) => (
                  <div key={i} className="flex items-start gap-3">
                    <div className="w-5 h-5 flex-shrink-0 mt-0.5 flex items-center justify-center" style={{backgroundColor: '#313194'}}>
                      <svg className="w-3 h-3 text-white" fill="currentColor" viewBox="0 0 20 20">
                        <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd"/>
                      </svg>
                    </div>
                    <span className="text-gray-600 text-sm leading-relaxed">{item}</span>
                  </div>
                ))}
              </div>

              <p className="text-gray-600 leading-relaxed mt-6 text-sm italic">{t('program3Vision')}</p>
            </div>
          </div>
        </div>

        {/* Program 4 — Social Integration, Peace-building & Humanitarian Aid */}
        <div>
          <div className="flex flex-col lg:flex-row-reverse gap-12 items-start">
            <div className="lg:w-1/2">
              <div className="relative h-[420px] overflow-hidden shadow-2xl">
                <Image src="/Social Integration, Peace-building and Humanitarian Aid/WhatsApp Image 2026-09-07 at 10.41.34 PM.png" alt="Social Integration and Peace-building" fill className="object-cover" />
                <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                <div className="absolute bottom-6 left-6">
                  <span className="text-xs font-bold uppercase tracking-widest text-white/80">Program 04</span>
                </div>
              </div>
            </div>
            <div className="lg:w-1/2 pt-4">
              <span className="inline-block text-xs font-bold uppercase tracking-widest mb-4" style={{color: '#313194'}}>{t('program4Label')}</span>
              <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">{t('program4Title')}</h2>
              <p className="text-gray-600 leading-relaxed mb-4">{t('program4Desc1')}</p>
              <p className="text-gray-600 leading-relaxed mb-6">{t('program4Desc2')}</p>

              <h3 className="text-lg font-bold text-gray-900 mb-4">{t('ourApproach')}</h3>
              <div className="space-y-3">
                {[
                  t('peace_approach1'),
                  t('peace_approach2'),
                  t('peace_approach3'),
                  t('peace_approach4'),
                  t('peace_approach5'),
                ].map((item, i) => (
                  <div key={i} className="flex items-start gap-3">
                    <div className="w-5 h-5 flex-shrink-0 mt-0.5 flex items-center justify-center" style={{backgroundColor: '#313194'}}>
                      <svg className="w-3 h-3 text-white" fill="currentColor" viewBox="0 0 20 20">
                        <path fillRule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clipRule="evenodd"/>
                      </svg>
                    </div>
                    <span className="text-gray-600 text-sm leading-relaxed">{item}</span>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>

      </div>

      {/* CTA Banner */}
      <div className="text-white py-20 px-4 text-center" style={{background: 'linear-gradient(135deg, #313194, #27277a)'}}>
        <h3 className="text-3xl md:text-4xl font-bold mb-4">{t('ctaTitle')}</h3>
        <p className="text-lg text-white/85 mb-8 max-w-2xl mx-auto">{t('ctaDesc')}</p>
        <div className="flex flex-col sm:flex-row gap-4 justify-center">
          <Link href="/contact" className="inline-block bg-white px-8 py-3 font-semibold transition-colors hover:bg-gray-100" style={{color: '#313194'}}>
            {t('ctaVolunteer')}
          </Link>
          <Link href="/donate" className="inline-block border-2 border-white text-white px-8 py-3 font-semibold transition-colors hover:bg-white hover:text-[#313194]">
            {t('ctaDonate')}
          </Link>
        </div>
      </div>

      <Footer />
    </div>
  );
}
