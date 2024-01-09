"use client";
import { TfiEmail } from "react-icons/tfi";
import Button from "../master/Button";
import { useState } from "react";
import { ErrorToast, IsEmail, SuccessToast } from "@/utility/FormHelper";

const Subscribe = ({bg}) => {
  let [data, setData] = useState({ email: "" });
  let [submit, setSubmit] = useState(false);
  const inputOnchange = (e) => {
    setData((data) => ({
      ...data,
      [e.target.name]: e.target.value,
    }));
  };
  const formSubmit = async () => {
    if (IsEmail(data.email)) {
      setData({ email: "" });
      ErrorToast("Valid Email Address Required!");
    } else {
      setSubmit(true);
      const options = { method: "POST", body: JSON.stringify(data) };
      let res = await (await fetch("/api/subscriber", options)).json();
      setSubmit(false);
      setData({ email: "" });

      res["status"] === "success"
        ? SuccessToast("Request Success")
        : ErrorToast("Email Already Used ! ");
    }
  };
  return (
    <div className={bg ? `${bg} rounded-lg text-white` : "bg-white rounded-lg"}>
      <div className="flex flex-col items-center justify-center p-6 gap-3">
        <TfiEmail className="text-6xl" />
        <h2 className="text-2xl">Subscribe</h2>
        <input
          type="text"
          name="email"
          onChange={(e) => {
            inputOnchange(e);
          }}
          className="border text-sm rounded-lg  block w-full p-2.5 bg-gray-700 border-gray-600 placeholder-gray-400 dark:text-white focus:ring-blue-500 focus:border-blue-500"
          placeholder="Email Address"
          value={data.email}
          required
        ></input>
        <Button onClick={formSubmit} submit={submit} text="Submit" />
      </div>
    </div>
  );
};

export default Subscribe;
