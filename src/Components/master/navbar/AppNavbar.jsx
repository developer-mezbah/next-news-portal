"use client";
import Image from "next/image";
import Link from "next/link";
import { useEffect, useRef, useState } from "react";
import { IoSearch } from "react-icons/io5";
import { useDebouncedCallback } from "use-debounce";
import "./AppNavbar.css";
import DropDown from "./DropDown";

const AppNavbar = ({ categories, isLogin }) => {
  const [toogleAvatar, setToogleAvatar] = useState(false);
  const [serarchInput, setSearchInput] = useState("");
  const [searchList, setSearchList] = useState({});

  // DropDown hidden when click outside
  const popupRef = useRef(null);
  const searchListRef = useRef(null);
  useEffect(() => {
    const handleClickOutside = (e) => {
      if (popupRef.current && !popupRef.current.contains(e.target)) {
        setToogleAvatar(false);
      }
    };
    document.addEventListener("click", handleClickOutside);

    if (!toogleAvatar) {
      document.removeEventListener("click", handleClickOutside);
    }
    return () => {
      document.removeEventListener("click", handleClickOutside);
    };
  }, [toogleAvatar]);
  // ref={popupRef} use in current DropDown div
  // Dropdown program End

  // Real time searchList change
  const handleSearch = useDebouncedCallback((e) => {
    setSearchInput(e.target.value);
    console.log(serarchInput.length);
    fetch(`/api/news/search?keyword=${e.target.value}`)
      .then((response) => response.json())
      .then((data) => {
        setSearchList(data.data);
      });
  }, 300);
  return (
    <div className="py-3">
      <div className="container mx-auto sm:flex justify-between items-center">
        <div className="logo">
          <Link href={"/"}>
            <Image
              className="h-[60px] w-[120px] mx-auto"
              src="/images/logo.png"
              width={500}
              height={500}
              alt="Logo"
            ></Image>
          </Link>
        </div>
        <div className="navbar text-black lg:block hidden">
          <ul className="flex justify-center items-center gap-3 text-lg flex-wrap">
            <li>
              <Link href={"/"}>Home</Link>
            </li>
            {categories &&
              categories.map((category) => (
                <li key={category.id}>
                  <Link href={`/category?id=${category["id"]}`}>
                    {"/ " + category.name}
                  </Link>
                </li>
              ))}
          </ul>
        </div>
        <div className="flex items-center gap-3 justify-between px-5 sm:pr-0 relative">
          <div className="inputBox flex items-center">
            <input
              className="border-2 border-gray-500 border-r-0 rounded-tl-md rounded-bl-md p-[5px] outline-none hover:border-themeColor"
              type="text"
              placeholder="Search..."
              // value={serarchInput}
              // onChange={(e) => setSearchInput(e.target.value)}
              onChange={(e) => handleSearch(e)}
            />
            <Link
              href={
                serarchInput === "" ? "/" : `/search?keyword=${serarchInput}`
              }
              className="bg-themeColor rounded-tr-md rounded-br-md h-full text-white p-[5px]"
            >
              <IoSearch style={{ fontSize: "28px" }} />
            </Link>
          </div>
          <div className="avaterOrSignUp relative min-w-[60px]">
            <div
              onClick={() => {
                setToogleAvatar(!toogleAvatar);
              }}
              className="border-2 border-themeColor p-2 w-full h-full rounded-full cursor-pointer"
            >
              <Image
                className="rounded-full"
                src={"/images/avtar.jpg"}
                width={50}
                height={50}
                alt="user avatar"
              ></Image>
            </div>
            {toogleAvatar && (
              <div
                ref={popupRef}
                className="navbar-dropdown absolute w-[200px] bg-black right-[0%] mt-5 rounded-lg text-white p-5 z-50"
              >
                <ul className=" space-y-1">
                  <li>
                    <Link href={"#"}>Profile</Link>
                  </li>
                  <li>
                    <Link href={"/"}>Home</Link>
                  </li>
                  {!isLogin && (
                    <li>
                      <Link href={"/user/login"}>Login</Link>
                    </li>
                  )}
                  {!isLogin && (
                    <li>
                      <Link href={"/user/registration"}>Register</Link>
                    </li>
                  )}
                  {isLogin && (
                    <li>
                      <Link href={"/user/registration"}>Comments</Link>
                    </li>
                  )}
                  <li className="lg:hidden block">
                    <DropDown categories={categories} />
                  </li>
                </ul>
                {isLogin && (
                  <a href="/api/user/login">
                    <button className="hover:bg-red-400 w-full p-1 border-2 border-red-500 mt-3 rounded-lg">
                      Sign Out
                    </button>
                  </a>
                )}
              </div>
            )}
          </div>
        </div>
        {searchList.length > 0 && (
          <div className="absolute md:right-[10%] sm:top-[120px] bg-black md:w-[500px] mx-5 z-[999999] text-white p-4 rounded-lg">
            <h2 className="text-white mt-3 text-2xl font-bold">Search Lists</h2>
            <ul className="mt-5">
              <span onClick={() => setSearchList({})} className="close">
                +
              </span>
              {searchList.map((list) => (
                <li key={list.id} className="mt-3">
                  <div className="flex items-center justify-between gap-3">
                    <Image
                      className="h-[70px] w-[70px] object-cover"
                      src={list.img1}
                      width={100}
                      height={100}
                      alt="search iamge"
                    />
                    <Link
                      href={`/details?id=${list.id}`}
                      className="hover:underline text-xl"
                    >
                      {list.title}
                    </Link>
                  </div>
                  <hr className="bg-themeColor border-0 outline-none h-1 rounded-xl" />
                </li>
              ))}
            </ul>
          </div>
        )}
      </div>
    </div>
  );
};

export default AppNavbar;
