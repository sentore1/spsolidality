'use client';
import Image from "next/image";
import { useState } from 'react';
import { useTranslations } from 'next-intl';
import Navigation from "../../components/Navigation";
import Footer from "../../components/Footer";

export default function GalleryPage() {
  const t = useTranslations('galleryPage');
  const [selected, setSelected] = useState<string | null>(null);

  const galleryImages = [
    // edited images folder — newest photos
    { src: '/edited images/w2 (1).png', alt: 'SPS Activities' },
    { src: '/edited images/w2.png',     alt: 'SPS Activities' },
    { src: '/edited images/w4.png',     alt: 'SPS Activities' },
    { src: '/edited images/w5.png',     alt: 'SPS Activities' },
    { src: '/edited images/w6.png',     alt: 'SPS Activities' },
    { src: '/edited images/w8.png',     alt: 'SPS Activities' },
    { src: '/edited images/w81.png',    alt: 'SPS Activities' },
    // images folder
    { src: '/images/1.png', alt: 'SPS Community' },
    { src: '/images/2.png', alt: 'SPS Community' },
    { src: '/images/slider1.png', alt: 'SPS Community' },
    { src: '/images/slider2.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.17.27 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.19.57 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.41.31 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.41.32 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.41.34 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.52.08 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 10.52.11 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.39.33 PM (1).png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.39.33 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.39.34 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.39.37 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.40.06 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.43.49 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.43.53 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.44.12 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 7.50.28 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 8.06.10 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 8.06.12 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 8.06.15 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 8.06.18 PM.png', alt: 'SPS Community' },
    { src: '/images/WhatsApp Image 2026-09-07 at 9.49.39 PM.png', alt: 'SPS Community' },
    // ufvimages numbered files
    ...Array.from({ length: 85 }, (_, i) => ({
      src: `/ufvimages/${i + 3}.jpg`,
      alt: 'SPS Program',
    })),
  ];

  return (
    <div className="min-h-screen bg-white">
      <Navigation logoWhite={true} />

      {/* Hero */}
      <div className="relative h-[400px] overflow-hidden" style={{background: 'linear-gradient(135deg, #313194, #27277a, #1e1f6b)'}}>
        <div className="absolute inset-0 bg-black/20"></div>
        <div className="absolute inset-0 flex flex-col items-center justify-center text-center px-4 z-10">
          <h1 className="text-5xl md:text-7xl font-bold text-white mb-6">{t('hero')}</h1>
          <p className="text-lg md:text-2xl text-white/95 max-w-3xl">{t('heroDesc')}</p>
        </div>
      </div>

      <div className="max-w-7xl mx-auto px-4 py-16">
        <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-3 md:gap-4">
          {galleryImages.map((image, index) => (
            <div
              key={index}
              className="relative h-48 md:h-64 overflow-hidden cursor-pointer group bg-gray-100"
              onClick={() => setSelected(image.src)}
            >
              <Image
                src={image.src}
                alt={image.alt}
                fill
                className="object-cover group-hover:scale-105 transition-transform duration-500"
              />
              <div className="absolute inset-0 bg-black/0 group-hover:bg-black/30 transition-all duration-300" />
            </div>
          ))}
        </div>
      </div>

      {/* Lightbox */}
      {selected && (
        <div
          className="fixed inset-0 z-50 bg-black/90 flex items-center justify-center p-4"
          onClick={() => setSelected(null)}
        >
          <button className="absolute top-6 right-6 text-white text-4xl leading-none hover:text-gray-300">&times;</button>
          <div className="relative w-full max-w-4xl h-[80vh]">
            <Image src={selected} alt="" fill className="object-contain" />
          </div>
        </div>
      )}

      <Footer />
    </div>
  );
}
