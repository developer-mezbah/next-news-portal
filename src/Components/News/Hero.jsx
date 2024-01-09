"use client";
import { Swiper, SwiperSlide } from "swiper/react";
import { Navigation, Pagination, Scrollbar, A11y } from "swiper/modules";
import "swiper/css";
import Link from "next/link";
import Image from "next/image";

const Hero = ({ sliders, featured }) => {
  return (
    <div className="">
      <div className="container mx-auto flex gap-[2%]">
        <div className="md:w-[68%] w-full px-3 sm:px-0">
          <Swiper
            modules={[Navigation, Pagination, Scrollbar, A11y]}
            spaceBetween={50}
            slidesPerView={1}
            navigation
            pagination={{ clickable: true }}
            scrollbar={{ draggable: true }}
            onSwiper={(swiper) => console.log(swiper)}
            onSlideChange={() => console.log("slide change")}
          >
            {sliders &&
              sliders.map((slide) => (
                <SwiperSlide key={slide.id}>
                  <div className="h-[500px] cursor-pointer">
                    <Image
                      className="h-full w-full object-cover relative rounded-lg"
                      src={slide.img1}
                      width={800}
                      height={600}
                      alt={slide.title}
                    />
                    <div
                      className="absolute bottom-0 w-full text-center text-white py-3 rounded-lg"
                      style={{ background: "rgba(0, 0, 0, .5)" }}
                    >
                      <h2 className="text-2xl">{slide.title}</h2>
                      <p className="px-4 text-lg">{slide.short_des}</p>
                    </div>
                  </div>
                </SwiperSlide>
              ))}
          </Swiper>
        </div>
        <div className="w-[30%] rounded-lg md:block hidden">
          {featured &&
            featured.map((item) => (
              <div key={item.id} className=" h-[500px] relative">
                <Image
                  className="h-full w-full object-cover  rounded-lg"
                  src={item.img1}
                  width={400}
                  height={500}
                  alt="Featured iamge"
                />
                <div
                  className="absolute bottom-0 w-full text-center text-white py-3 rounded-lg"
                  style={{ background: "rgba(0, 0, 0, .5)" }}
                >
                    <h2 className="text-2xl">{item.title}</h2>
                    <p>{item.short_des}</p>
                </div>
              </div>
            ))}
        </div>
      </div>
    </div>
  );
};

export default Hero;
