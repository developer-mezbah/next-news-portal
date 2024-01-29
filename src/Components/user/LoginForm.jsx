"use client";
import { useState } from "react";
import SubmitButton from "../SubmitButton";
import { ErrorToast, IsEmail, IsEmpty, SuccessToast } from "@/utility/FormHelper";
import Link from "next/link";

const LoginForm = () => {
  let [data, setData] = useState({ email: "", password: "" });
  const [submit, setSubmit] = useState(false);
  const inputOnChange = (name, value) => {
    setData((data) => ({
      ...data,
      [name]: value,
    }));
  };

  const formSubmit =async (e) => {
    e.preventDefault();
    if(IsEmail(data.email)){
        ErrorToast("Valid Email Address Required")
    }
    else if(IsEmpty(data.password)){
        ErrorToast("Password Required")
    }
    else{
        setSubmit(true);

        const options = {
            method: 'POST',
            headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
            body: JSON.stringify(data)
        }

        let res=await fetch("/api/user/login",options);
        let ResJson=await res.json();

        setSubmit(false);

        if(ResJson['status']==="success"){
            SuccessToast("Login Success")
            window.location.href="/"
        }
        else{
            ErrorToast("Request Fail")
        }

    }
  }

  return (
    <form onSubmit={formSubmit} className="max-w-xl lg:mx-auto my-10 mx-5">
      <h2 className="text-2xl mt-16 pb-8 wavy-underline">
        <span className="text-themeColor font-bold">Login</span>
      </h2>
      <div className="relative z-0 w-full mb-5 group">
        <input
          type="email"
          name="email"
          id="email"
          className="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none  focus:border-themeColor focus:outline-none focus:ring-0 peer"
          placeholder=" "
          required=""
          value={data.email}
          onChange={(e) => {
            inputOnChange("email", e.target.value);
          }}
        />
        <label
          htmlFor="email"
          className="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
        >
          email
        </label>
      </div>
      <div className="relative z-0 w-full mb-5 group">
        <input
          type="password"
          name="password"
          id="password"
          className="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none  focus:border-themeColor focus:outline-none focus:ring-0 peer"
          placeholder=" "
          required=""
          value={data.password}
          onChange={(e) => {
            inputOnChange("password", e.target.value);
          }}
        />
        <label
          htmlFor="password"
          className="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
        >
          Password
        </label>
      </div>
      <div className="flex flex-col gap-3">
      <Link href="/user/emailVerify" className="underline text-gray-500 hover:text-black">Forget password</Link>
      <SubmitButton
        submit={submit}
        text="Login"
        className="text-white bg-themeColor focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center hover:bg-blue-700"
      />
      </div>
    </form>
  );
};

export default LoginForm;
