import Image from "next/image";
import React from "react";
import parse from "html-react-parser"

const NewsDetails = ({postDetails}) => {
    const { title, short_des, img1, img2, img3, img4, long_des } =
      postDetails.data[0];
  return (
    <>
      <h2 className="text-4xl mt-16 mb-2">
        <span className="text-themeColor font-bold">{title}</span>
      </h2>
      <hr />
      <div className="grid md:grid-cols-2 gap-5">
        <Image
          src={img1}
          width={1000}
          height={500}
          alt="Sigle post images"
          className="h-[200px] md:h-[400px] object-cover w-full rounded-lg"
        />
        <Image
          src={img3}
          width={1000}
          height={500}
          alt="Sigle post images"
          className="h-[200px] md:h-[400px] object-cover w-full rounded-lg"
        />
        <Image
          src={img2}
          width={1000}
          height={500}
          alt="Sigle post images"
          className="h-[200px] md:h-[400px] object-cover w-full rounded-lg"
        />
        <Image
          src={img4}
          width={1000}
          height={500}
          alt="Sigle post images"
          className="h-[200px] md:h-[400px] object-cover w-full rounded-lg"
        />
      </div>
      <div className="post-details">
        {parse(long_des)}
        <div>
            
        </div>
      </div>
    </>
  );
};

export default NewsDetails;
