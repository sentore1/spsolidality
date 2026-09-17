'use client';

import { useEffect, useState } from 'react';
import Image from 'next/image';
import { useLocale, useTranslations } from 'next-intl';
import { Link } from '@/i18n/routing';

const LOCAL_SLIDES = [
  '/newslider/1.png',
  '/newslider/2.png',
  '/newslider/w2.png',
  '/newslider/w2%20(1).png',
  '/newslider/w4.png',
  '/newslider/w5.png',
  '/newslider/w6.png',
  '/newslider/w8.png',
  '/newslider/w81.png',
  '/newslider/WhatsApp%20Image%202026-09-07%20at%2010.41.31%20PM.png',
  '/newslider/WhatsApp%20Image%202026-09-07%20at%2010.41.31%20PM%20(2).png',
  '/newslider/WhatsApp%20Image%202026-09-07%20at%207.39.34%20PM%20(2).png',
  '/newslider/WhatsApp%20Image%202026-09-14%20at%202.01.40%20PM.png',
  '/newslider/WhatsApp%20Image%202026-09-14%20at%202.01.40%20PM%20(2).png',
  '/newslider/WhatsApp%20Image%202026-09-14%20at%202.01.40%20PM%20(3).jpeg',
  '/newslider/WhatsApp%20Image%202026-09-14%20at%202.01.41%20PM%20(1).jpeg',
];

export default function HeroSlider() {
  const locale = useLocale();
  const t = useTranslations('hero');
  const [currentSlide, setCurrentSlide] = useState(0);
  const [isAnimating, setIsAnimating] = useState(false);

  const slides = LOCAL_SLIDES.map((image, i) => ({
    image,
    title: t(`slide${(i % 3) + 1}Title`),
    subtitle: t(`slide${(i % 3) + 1}Subtitle`),
  }));

  useEffect(() => {
    const interval = setInterval(() => {
      setIsAnimating(true);
      setTimeout(() => {
        setCurrentSlide((prev) => (prev + 1) % slides.length);
        setIsAnimating(false);
      }, 300);
    }, 4000);

    return () => clearInterval(interval);
  }, [slides.length]);

  return (
    <section className="relative h-[700px] md:h-[800px] overflow-hidden -mt-20">
      <div className="absolute inset-0">
        <div className="hero-slider">
          {slides.map((slide, index) => (
            <div
              key={index}
              className={`slide ${index === currentSlide ? 'active' : ''}`}
            >
              <Image
                src={slide.image}
                alt={slide.title}
                fill
                className="object-cover object-top"
                priority={index === 0}
                unoptimized
              />
            </div>
          ))}
        </div>
      </div>
      <div className="absolute inset-0 bg-black/25"></div>
      <div className="relative h-full flex items-end justify-center md:justify-end px-4">
        <div className="w-full md:max-w-2xl pb-12 md:pb-16">
          <div className="w-full">
            <div className="p-4 sm:p-6 md:p-8">
              <h1
                className={`text-xl sm:text-2xl md:text-4xl font-bold mb-3 md:mb-4 transition-all duration-700 ease-out text-white drop-shadow-[0_2px_4px_rgba(0,0,0,0.8)] ${
                  !isAnimating ? 'translate-y-0 opacity-100' : 'translate-y-12 opacity-0'
                }`}
                dangerouslySetInnerHTML={{ __html: slides[currentSlide].title }}
              />
              <p
                className={`text-sm md:text-lg mb-4 md:mb-6 transition-all duration-700 ease-out delay-200 text-gray-200 drop-shadow-[0_1px_3px_rgba(0,0,0,0.8)] ${
                  !isAnimating ? 'translate-y-0 opacity-100' : 'translate-y-12 opacity-0'
                }`}
              >
                {slides[currentSlide].subtitle}
              </p>
              <div
                className={`flex flex-col sm:flex-row gap-4 transition-all duration-700 ease-out delay-400 ${
                  !isAnimating ? 'translate-y-0 opacity-100' : 'translate-y-12 opacity-0'
                }`}
              >
                <Link
                  href="/contact"
                  className="px-4 sm:px-6 py-2 sm:py-3 text-sm sm:text-base rounded-none font-semibold transition-colors flex items-center justify-center gap-2"
                  style={{ backgroundColor: '#313194', color: 'white' }}
                >
                  {t('getInvolved')}
                  <svg className="w-4 h-4 sm:w-5 sm:h-5" fill="currentColor" viewBox="0 0 20 20">
                    <path
                      fillRule="evenodd"
                      d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                      clipRule="evenodd"
                    />
                  </svg>
                </Link>
                <Link
                  href="/donate"
                  className="border-2 border-white text-white px-4 sm:px-6 py-2 sm:py-3 text-sm sm:text-base rounded-none hover:bg-white hover:text-[#313194] font-semibold transition-colors flex items-center justify-center gap-2"
                >
                  {t('donateNow')}
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Slide indicators */}
      <div className="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2 z-10">
        {slides.map((_, index) => (
          <button
            key={index}
            onClick={() => setCurrentSlide(index)}
            className={`w-2 h-2 rounded-full transition-all duration-300 ${
              index === currentSlide ? 'bg-white w-6' : 'bg-white/50'
            }`}
            aria-label={`Go to slide ${index + 1}`}
          />
        ))}
      </div>
    </section>
  );
}
