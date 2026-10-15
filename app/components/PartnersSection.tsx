'use client';

import { useState, useEffect } from 'react';
import Image from 'next/image';
import { supabase } from '@/lib/supabase';

interface Partner {
  id: number;
  name: string;
  logo_url: string;
  website_url?: string;
  order_index: number;
}

const fallbackPartners: Partner[] = [
  { id: 1, name: 'UNHCR',    logo_url: '/partners/Unhcr.JPG',                                        order_index: 1 },
  { id: 2, name: 'SEGAL',    logo_url: '/partners/SEGAL.JPG',                                        order_index: 2 },
  { id: 3, name: 'Inkomoko', logo_url: '/partners/Inkomoko.JPG',                                     order_index: 3 },
  { id: 4, name: 'Partner',  logo_url: '/partners/WhatsApp Image 2026-09-07 at 10.09.03 PM.jpeg',    order_index: 4 },
  { id: 5, name: 'Partner',  logo_url: '/partners/2.png',                                            order_index: 5 },
  { id: 6, name: 'Partner',  logo_url: '/partners/3.png',                                            order_index: 6 },
  { id: 7, name: 'Partner',  logo_url: '/partners/34.png',                                           order_index: 7 },
  { id: 8, name: 'Partner',  logo_url: '/partners/fsdf.png',                                         order_index: 8 },
];

export default function PartnersSection() {
  const [partners, setPartners] = useState<Partner[]>(fallbackPartners);

  useEffect(() => {
    const fetchPartners = async () => {
      const { data } = await supabase
        .from('partners')
        .select('*')
        .eq('is_active', true)
        .order('order_index');

      if (data && data.length > 0) setPartners(data);
    };
    fetchPartners();
  }, []);

  return (
    <section className="py-16 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-10">
          <p className="text-sm font-semibold uppercase tracking-widest text-[#313194] mb-2">Our Partners</p>
          <h2 className="text-3xl font-bold text-gray-900">Organisations We Work With</h2>
        </div>
        <div className="flex justify-center items-center gap-6 flex-wrap">
          {partners.map((partner) => (
            <div key={partner.id}>
              {partner.website_url ? (
                <a href={partner.website_url} target="_blank" rel="noopener noreferrer">
                  <div className="w-32 h-32 rounded-xl bg-white shadow-md border border-gray-100 flex items-center justify-center p-3 hover:shadow-xl transition-shadow">
                    <Image
                      src={partner.logo_url}
                      alt={partner.name}
                      width={100}
                      height={100}
                      className="w-full h-full object-contain"
                    />
                  </div>
                </a>
              ) : (
                <div className="w-32 h-32 rounded-xl bg-white shadow-md border border-gray-100 flex items-center justify-center p-3 hover:shadow-xl transition-shadow">
                  <Image
                    src={partner.logo_url}
                    alt={partner.name}
                    width={100}
                    height={100}
                    className="w-full h-full object-contain"
                  />
                </div>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
