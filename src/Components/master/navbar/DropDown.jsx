"use client"
import Link from "next/link";
import React, { useState } from "react";
import { IoIosArrowForward, IoIosArrowDown  } from "react-icons/io";

const DropDown = ({categories}) => {
  const [dropdown, setDropDown] = useState(false)
  return (
    <>
      <button onClick={() => setDropDown(!dropdown)} className="flex items-center gap-2 cursor-pointer">
        <b>Categories</b>
        {
          dropdown ? 
          <b><IoIosArrowDown/></b> : 
          <b><IoIosArrowForward/></b>
        }
      </button>
      {dropdown && <ul className="ml-3">
      {categories && categories.map(category => (
            <li key={category.id}>
              <Link href={"#"}>{category.name}</Link>
            </li>
            ))}
      </ul>}
    </>
  );
};

export default DropDown;
