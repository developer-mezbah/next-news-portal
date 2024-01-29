"use client";
import { ErrorToast, IsEmail, SetEmail } from "@/utility/FormHelper";
import toast from "react-hot-toast";
import SubmitButton from "../SubmitButton";
import {useRouter} from "next/navigation";
import { useState } from "react";

const EmailVerifyForm = () => {
  const router = useRouter();
  let [data, setData] = useState({ email: "" });
  const [submit, setSubmit] = useState(false);
  const inputOnChange = (name, value) => {
    setData((data) => ({
      ...data,
      [name]: value,
    }));
  };

  const formSubmit = async (e) => {
    e.preventDefault();
    if (IsEmail(data.email)) {
      ErrorToast("Valid Email Address Required");
    } else {
      setSubmit(true);
      let res = await fetch(
        `/api/user/recover/verifyEmail?email=${data.email}`
      );
      let ResJSON = await res.json();
      if (ResJSON.status === "success") {
        // Temporary Session
        SetEmail(data.email)
        router.push("/user/otpVerify");
        toast.success("Request Success");
      } else {
        toast.error("Invalid Email Address!");
      }
      setSubmit(false);
    }
  };
  return (
    <form onSubmit={formSubmit} className="max-w-xl lg:mx-auto my-10 mx-5">
      <h2 className="text-2xl mt-16 wavy-underline pb-8">
        <span className="text-themeColor font-bold">Email Verify</span>
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
          Input your email address
        </label>
      </div>

      <SubmitButton
        submit={submit}
        text="Next"
        className="text-white bg-themeColor focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center hover:bg-blue-700"
      />
    </form>
  );
};

export default EmailVerifyForm;
