"use client";
import Link from "next/link";
import { CiFacebook, CiYoutube, CiTwitter, CiLinkedin, CiCalendar } from "react-icons/ci";
import { AiOutlineMail } from "react-icons/ai";




const TopNavbar = ({socialData}) => {
  const {facebook, youtube,twitter, linkedin} = socialData[0];
  return (
    <>
      <div className="topSocialMedia bg-themeColor text-light">
        <div className="container mx-auto sm:flex justify-between items-center py-2 ">
          <div className="sm:flex gap-3">
            <h6 className="flex gap-1 items-center sm:ml-0 ml-2">
            <CiCalendar className="text-2xl"/>
               Today:
              <span className="text-sm">
                {new Date().getDay()}/{new Date().getMonth()}/
                {new Date().getFullYear()}
              </span>
            </h6>
            <span className="sm:inline hidden">-</span>
            <h6 className="flex gap-1 items-center sm:mt-0 mt-2 sm:ml-0 ml-2"><AiOutlineMail className="text-xl"/><span className="text-sm">Email: developer.mezbah@gmail.com</span></h6>
          </div>
          <div className="flex gap-3 text-2xl justify-center sm:justify-start sm:mt-0 mt-3 md:mr-0 mr-5">
            <Link href={facebook}>
              <CiFacebook />
            </Link>
            <Link href={youtube}>
              <CiYoutube />
            </Link>
            <Link href={twitter}>
              <CiTwitter />
            </Link>
            <Link href={linkedin}>
              <CiLinkedin />
            </Link>
          </div>
        </div>
      </div>
    </>
  );
};

export default TopNavbar;
