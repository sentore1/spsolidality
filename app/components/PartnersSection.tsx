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
  { id: 4, name: 'World',    logo_url: '/partners/World.JPG',                                        order_index: 4 },
  { id: 5, name: 'Partner',  logo_url: '/partners/WhatsApp Image 2026-09-07 at 10.09.03 PM.jpeg',    order_index: 5 },
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
        <div className="flex justify-center items-center gap-10 flex-wrap">
          {partners.map((partner) => (
            <div key={partner.id} className="flex flex-col items-center gap-3">
              {partner.website_url ? (
                <a href={partner.website_url} target="_blank" rel="noopener noreferrer">
                  <div className="w-52 h-52 rounded-2xl bg-white shadow-md border border-gray-100 flex items-center justify-center p-4 hover:shadow-xl transition-shadow">
                    <Image
                      src={partner.logo_url}
                      alt={partner.name}
                      width={180}
                      height={180}
                      className="w-full h-full object-contain"
                    />
                  </div>
                </a>
              ) : (
                <div className="w-52 h-52 rounded-2xl bg-white shadow-md border border-gray-100 flex items-center justify-center p-4 hover:shadow-xl transition-shadow">
                  <Image
                    src={partner.logo_url}
                    alt={partner.name}
                    width={180}
                    height={180}
                    className="w-full h-full object-contain"
                  />
                </div>
              )}
              <p className="text-sm font-semibold text-gray-600">{partner.name}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
