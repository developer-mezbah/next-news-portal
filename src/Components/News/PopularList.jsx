import Image from "next/image";
import Link from "next/link";
import React from "react";
import Subscribe from "./Subscribe";

const PopularList = ({ popularLists }) => {
  return (
    <div className="mt-10">
      <div className="title bg-themeColor rounded-lg ">
        <h2 className="py-2 px-3 text-xl text-white">POPULAR</h2>
      </div>
      <div className="popular-posts">
        {popularLists &&
          popularLists.data.map((item) => (
            <div key={item.id} className="flex bg-black p-3 mt-2 rounded-md">
              <Image
                className="w-2/5 min-w-2/5 rounded-sm object-cover h-[90px]"
                src={item.img1}
                width={200}
                height={200}
                alt="Popular posts image"
              />
              <Link href={`/details?id=${item.id}`} className="px-3 py-2 text-white hover:underline">
                {item.title}
              </Link>
            </div>
          ))}
      </div>
      <div className="title bg-themeColor rounded-lg mt-5">
        <h2 className="py-2 px-3 text-xl text-white">POPULAR</h2>
      </div>
      <div className="mt-2">
        <Subscribe bg="bg-black"/>
      </div>
    </div>
  );
};

export default PopularList;
