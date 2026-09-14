'use client';
import Image from 'next/image';
import { useEffect, useState } from 'react';
import { useLocale, useTranslations } from 'next-intl';
import { Link } from '@/i18n/routing';
import { supabase } from '@/lib/supabase';

export default function CTASection() {
  const locale = useLocale();
  const t = useTranslations('home');
  const [section, setSection] = useState<any>(null);

  useEffect(() => {
    const fetchSection = async () => {
      const { data } = await supabase
        .from('content_sections')
        .select('*')
        .eq('section_key', 'cta_section')
        .single();
      
      if (data) setSection(data);
    };
    fetchSection();
  }, []);

  if (!section) return null;

  const bgImage = section.media_urls?.[0];

  return (
    <section className="py-24 text-white relative overflow-hidden" style={{backgroundColor: '#313194'}}>
      {bgImage && (
        <div className="absolute inset-0">
          <Image src={bgImage} alt="" fill className="object-cover opacity-20" />
        </div>
      )}
      <div className="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 className="text-4xl font-bold mb-6">
          {section.title[locale] || section.title.en}
        </h2>
        <p className="text-xl mb-8 opacity-90 max-w-3xl mx-auto">
          {section.content[locale] || section.content.en}
        </p>
        <div className="flex flex-col sm:flex-row gap-4 justify-center">
          <Link href="/contact" className="bg-white px-8 py-3 rounded-none hover:bg-gray-100 font-semibold text-center" style={{color: '#313194'}}>
            {t('becomeVolunteer')}
          </Link>
          <Link href="/donate" className="border-2 border-white text-white px-8 py-3 rounded-none hover:bg-white font-semibold flex items-center justify-center gap-2 transition-colors hover:text-[#313194]">
            {t('supportMission')}
            <svg className="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
              <path fillRule="evenodd" d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" clipRule="evenodd"/>
            </svg>
          </Link>
        </div>
      </div>
    </section>
  );
}