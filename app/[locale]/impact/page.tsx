'use client';
import Image from "next/image";
import Navigation from "../../components/Navigation";
import Footer from "../../components/Footer";
import { Link } from '@/i18n/routing';
import {useTranslations} from 'next-intl';

export default function ImpactPage() {
  const t = useTranslations('impactPage');

  const stats = [
    { number: '4,834', label: t('stat1Label'), icon: (
      <svg className="w-8 h-8 text-white" fill="currentColor" viewBox="0 0 20 20">
        <path fillRule="evenodd" d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" clipRule="evenodd"/>
      </svg>
    )},
    { number: '238', label: t('stat2Label'), icon: (
      <svg className="w-8 h-8 text-white" fill="currentColor" viewBox="0 0 20 20">
        <path d="M9 6a3 3 0 11-6 0 3 3 0 016 0zM17 6a3 3 0 11-6 0 3 3 0 016 0zM12.93 17c.046-.327.07-.66.07-1a6.97 6.97 0 00-1.5-4.33A5 5 0 0119 16v1h-6.07zM6 11a5 5 0 015 5v1H1v-1a5 5 0 015-5z"/>
      </svg>
    )},
    { number: '300', label: t('stat3Label'), icon: (
      <svg className="w-8 h-8 text-white" fill="currentColor" viewBox="0 0 20 20">
        <path fillRule="evenodd" d="M6.267 3.455a3.066 3.066 0 001.745-.723 3.066 3.066 0 013.976 0 3.066 3.066 0 001.745.723 3.066 3.066 0 012.812 2.812c.051.643.304 1.254.723 1.745a3.066 3.066 0 010 3.976 3.066 3.066 0 00-.723 1.745 3.066 3.066 0 01-2.812 2.812 3.066 3.066 0 00-1.745.723 3.066 3.066 0 01-3.976 0 3.066 3.066 0 00-1.745-.723 3.066 3.066 0 01-2.812-2.812 3.066 3.066 0 00-.723-1.745 3.066 3.066 0 010-3.976 3.066 3.066 0 00.723-1.745 3.066 3.066 0 012.812-2.812zm7.44 5.252a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd"/>
      </svg>
    )},
    { number: '10', label: t('stat4Label'), icon: (
      <svg className="w-8 h-8 text-white" fill="currentColor" viewBox="0 0 20 20">
        <path fillRule="evenodd" d="M9.383 3.076A1 1 0 0110 4v12a1 1 0 01-1.707.707L4.586 13H2a1 1 0 01-1-1V8a1 1 0 011-1h2.586l3.707-3.707a1 1 0 011.09-.217zM14.657 2.929a1 1 0 011.414 0A9.972 9.972 0 0119 10a9.972 9.972 0 01-2.929 7.071 1 1 0 01-1.414-1.414A7.971 7.971 0 0017 10c0-2.21-.894-4.208-2.343-5.657a1 1 0 010-1.414zm-2.829 2.828a1 1 0 011.415 0A5.983 5.983 0 0115 10a5.984 5.984 0 01-1.757 4.243 1 1 0 01-1.415-1.415A3.984 3.984 0 0013 10a3.983 3.983 0 00-1.172-2.828 1 1 0 010-1.415z" clipRule="evenodd"/>
      </svg>
    )},
  ];

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

      {/* Stats Grid */}
      <div className="max-w-7xl mx-auto px-4 py-20">
        <div className="text-center mb-14">
          <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">{t('statsTitle')}</h2>
          <div className="w-16 h-1 mx-auto" style={{backgroundColor: '#313194'}}></div>
        </div>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-0 border border-gray-200">
          {stats.map((stat, i) => (
            <div key={i} className={`p-8 md:p-12 text-center flex flex-col items-center gap-4 ${i < stats.length - 1 ? 'border-r border-gray-200' : ''}`}>
              <div className="w-14 h-14 flex items-center justify-center" style={{backgroundColor: '#313194'}}>
                {stat.icon}
              </div>
              <p className="text-4xl md:text-5xl font-bold" style={{color: '#313194'}}>{stat.number}</p>
              <p className="text-sm text-gray-500 font-medium leading-snug">{stat.label}</p>
            </div>
          ))}
        </div>
      </div>

      {/* Full-width image */}
      <div className="relative h-[400px] md:h-[500px] overflow-hidden">
        <Image src="/ufvimages/12.jpg" alt="SPS community impact" fill className="object-cover" unoptimized />
        <div className="absolute inset-0 bg-gradient-to-r from-black/60 to-transparent flex items-center">
          <div className="max-w-7xl mx-auto px-4 md:px-8 w-full">
            <p className="text-white/70 text-sm font-semibold uppercase tracking-widest mb-3">{t('storyLabel')}</p>
            <h2 className="text-3xl md:text-5xl font-bold text-white max-w-xl leading-tight">{t('storyTitle')}</h2>
          </div>
        </div>
      </div>

      <div className="max-w-7xl mx-auto px-4 py-20">

        {/* Our Story */}
        <div className="grid md:grid-cols-2 gap-16 items-start mb-24">
          <div>
            <span className="text-xs font-bold uppercase tracking-widest mb-3 block" style={{color: '#313194'}}>{t('storyLabel')}</span>
            <h2 className="text-3xl font-bold text-gray-900 mb-6">{t('storyHeading')}</h2>
            <p className="text-gray-600 leading-relaxed mb-4">{t('storyP1')}</p>
            <p className="text-gray-600 leading-relaxed mb-4">{t('storyP2')}</p>
            <p className="text-gray-600 leading-relaxed">{t('storyP3')}</p>
          </div>
          <div className="relative h-[420px] overflow-hidden shadow-xl">
            <Image src="/ufvimages/20.jpg" alt="SPS story" fill className="object-cover" unoptimized />
          </div>
        </div>

        {/* Program Impact Breakdown */}
        <div className="mb-24">
          <div className="text-center mb-14">
            <span className="text-xs font-bold uppercase tracking-widest mb-3 block" style={{color: '#313194'}}>{t('programImpactLabel')}</span>
            <h2 className="text-3xl md:text-4xl font-bold text-gray-900">{t('programImpactTitle')}</h2>
          </div>

          <div className="grid md:grid-cols-2 gap-8">

            {/* Healthcare */}
            <div className="border border-gray-200 p-8">
              <div className="flex items-center gap-4 mb-6">
                <div className="w-12 h-12 flex items-center justify-center flex-shrink-0" style={{backgroundColor: '#313194'}}>
                  <svg className="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                    <path fillRule="evenodd" d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" clipRule="evenodd"/>
                  </svg>
                </div>
                <div>
                  <p className="text-3xl font-bold" style={{color: '#313194'}}>4,834</p>
                  <h3 className="text-lg font-bold text-gray-900">{t('impactHealth')}</h3>
                </div>
              </div>
              <p className="text-gray-600 leading-relaxed text-sm">{t('impactHealthDesc')}</p>
            </div>

            {/* Humanitarian Aid */}
            <div className="border border-gray-200 p-8">
              <div className="flex items-center gap-4 mb-6">
                <div className="w-12 h-12 flex items-center justify-center flex-shrink-0" style={{backgroundColor: '#313194'}}>
                  <svg className="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                    <path d="M9 6a3 3 0 11-6 0 3 3 0 016 0zM17 6a3 3 0 11-6 0 3 3 0 016 0zM12.93 17c.046-.327.07-.66.07-1a6.97 6.97 0 00-1.5-4.33A5 5 0 0119 16v1h-6.07zM6 11a5 5 0 015 5v1H1v-1a5 5 0 015-5z"/>
                  </svg>
                </div>
                <div>
                  <p className="text-3xl font-bold" style={{color: '#313194'}}>238</p>
                  <h3 className="text-lg font-bold text-gray-900">{t('impactAid')}</h3>
                </div>
              </div>
              <p className="text-gray-600 leading-relaxed text-sm">{t('impactAidDesc')}</p>
            </div>

            {/* Youth & Women */}
            <div className="border border-gray-200 p-8">
              <div className="flex items-center gap-4 mb-6">
                <div className="w-12 h-12 flex items-center justify-center flex-shrink-0" style={{backgroundColor: '#313194'}}>
                  <svg className="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                    <path fillRule="evenodd" d="M6.267 3.455a3.066 3.066 0 001.745-.723 3.066 3.066 0 013.976 0 3.066 3.066 0 001.745.723 3.066 3.066 0 012.812 2.812c.051.643.304 1.254.723 1.745a3.066 3.066 0 010 3.976 3.066 3.066 0 00-.723 1.745 3.066 3.066 0 01-2.812 2.812 3.066 3.066 0 00-1.745.723 3.066 3.066 0 01-3.976 0 3.066 3.066 0 00-1.745-.723 3.066 3.066 0 01-2.812-2.812 3.066 3.066 0 00-.723-1.745 3.066 3.066 0 010-3.976 3.066 3.066 0 00.723-1.745 3.066 3.066 0 012.812-2.812zm7.44 5.252a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd"/>
                  </svg>
                </div>
                <div>
                  <p className="text-3xl font-bold" style={{color: '#313194'}}>300</p>
                  <h3 className="text-lg font-bold text-gray-900">{t('impactYouth')}</h3>
                </div>
              </div>
              <p className="text-gray-600 leading-relaxed text-sm">{t('impactYouthDesc')}</p>
            </div>

            {/* Peace Songs */}
            <div className="border border-gray-200 p-8">
              <div className="flex items-center gap-4 mb-6">
                <div className="w-12 h-12 flex items-center justify-center flex-shrink-0" style={{backgroundColor: '#313194'}}>
                  <svg className="w-6 h-6 text-white" fill="currentColor" viewBox="0 0 20 20">
                    <path fillRule="evenodd" d="M9.383 3.076A1 1 0 0110 4v12a1 1 0 01-1.707.707L4.586 13H2a1 1 0 01-1-1V8a1 1 0 011-1h2.586l3.707-3.707a1 1 0 011.09-.217zM14.657 2.929a1 1 0 011.414 0A9.972 9.972 0 0119 10a9.972 9.972 0 01-2.929 7.071 1 1 0 01-1.414-1.414A7.971 7.971 0 0017 10c0-2.21-.894-4.208-2.343-5.657a1 1 0 010-1.414zm-2.829 2.828a1 1 0 011.415 0A5.983 5.983 0 0115 10a5.984 5.984 0 01-1.757 4.243 1 1 0 01-1.415-1.415A3.984 3.984 0 0013 10a3.983 3.983 0 00-1.172-2.828 1 1 0 010-1.415z" clipRule="evenodd"/>
                  </svg>
                </div>
                <div>
                  <p className="text-3xl font-bold" style={{color: '#313194'}}>10</p>
                  <h3 className="text-lg font-bold text-gray-900">{t('impactPeace')}</h3>
                </div>
              </div>
              <p className="text-gray-600 leading-relaxed text-sm">{t('impactPeaceDesc')}</p>
            </div>
          </div>
        </div>

        {/* Vision & Mission block */}
        <div className="grid md:grid-cols-2 gap-0 mb-24 border border-gray-200">
          <div className="p-10 md:p-14" style={{backgroundColor: '#313194'}}>
            <span className="text-xs font-bold uppercase tracking-widest text-white/60 block mb-4">{t('visionLabel')}</span>
            <h3 className="text-2xl font-bold text-white mb-4">{t('visionTitle')}</h3>
            <p className="text-white/85 leading-relaxed">{t('visionText')}</p>
          </div>
          <div className="p-10 md:p-14 bg-gray-50">
            <span className="text-xs font-bold uppercase tracking-widest block mb-4" style={{color: '#313194'}}>{t('missionLabel')}</span>
            <h3 className="text-2xl font-bold text-gray-900 mb-4">{t('missionTitle')}</h3>
            <p className="text-gray-600 leading-relaxed">{t('missionText')}</p>
          </div>
        </div>

      </div>

      {/* CTA */}
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
