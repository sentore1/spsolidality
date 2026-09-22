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
    // All images from ufvimages folder
    { src: '/ufvimages/3.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/4.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/5.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/7.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/8.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/9.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/10.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/11.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/12.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/12.png', alt: 'SPS Program' },
    { src: '/ufvimages/13.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/14.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/16.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/17.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/18.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/19.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/1w.png', alt: 'SPS Program' },
    { src: '/ufvimages/20.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/22.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/23.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/24.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/25.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/26.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/27.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/28.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/29.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/30.jpg', alt: 'SPS Program' },
    { src: '/ufvimages/dd.png', alt: 'SPS Program' },
    { src: '/ufvimages/ds.png', alt: 'SPS Program' },
    { src: '/ufvimages/erwr.png', alt: 'SPS Program' },
    { src: '/ufvimages/ewe3.png', alt: 'SPS Program' },
    { src: '/ufvimages/fsdfsf.png', alt: 'SPS Program' },
    { src: '/ufvimages/fsfsfsf.png', alt: 'SPS Program' },
    { src: '/ufvimages/rewrwr.png', alt: 'SPS Program' },
    { src: '/ufvimages/rrrr.png', alt: 'SPS Program' },
    { src: '/ufvimages/rwrwr.png', alt: 'SPS Program' },
    { src: '/ufvimages/vdvdvd.png', alt: 'SPS Program' },
    { src: '/ufvimages/vs.png', alt: 'SPS Program' },
    { src: '/ufvimages/vsv.png', alt: 'SPS Program' },
    { src: '/ufvimages/vsvs.png', alt: 'SPS Program' },
    { src: '/ufvimages/vsvsvs.png', alt: 'SPS Program' },
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
