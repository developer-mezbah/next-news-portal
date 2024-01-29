"use client";
import ReverseTimer from "@/Components/Others/ReverseTimer";
import {
  ErrorToast,
  GetEmail,
  IsEmpty,
  SetOTP,
  SuccessToast,
} from "@/utility/FormHelper";
import { useRouter } from "next/navigation";
import { useState } from "react";
import SubmitButton from "../SubmitButton";

const OtpVerifyForm = () => {
  const [data, setData] = useState({
    email: GetEmail(),
    otp: "",
  });
  const [submit, setSubmit] = useState(false);
  const router = useRouter();
  const inputOnChange = (name, value) => {
    setData((data) => ({
      ...data,
      [name]: value,
    }));
  };

  const formSubmit = async (e) => {
    e.preventDefault();
    if (IsEmpty(data.otp)) {
      ErrorToast("Valid PIN Code Required");
    } else {
      setSubmit(true);
      const options = {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      };

      let res = await fetch("/api/user/recover/verifyOTP", options);
      let ResJson = await res.json();

      setSubmit(false);

      if (ResJson["status"] === "success") {
        SuccessToast("Verification Success");
        SetOTP(data.otp)
        router.push("/user/resetPassword");
      } else {
        ErrorToast("Request Fail");
      }
    }
  };
  return (
    <form onSubmit={formSubmit} className="max-w-xl lg:mx-auto my-10 mx-5">
      <h2 className="text-2xl mt-16 wavy-underline pb-8">
        <span className="text-themeColor font-bold">Verification PIN</span>
      </h2>
      <div className="relative z-0 w-full mb-5 group">
        <input
          type="number"
          id="email"
          className="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none  focus:border-themeColor focus:outline-none focus:ring-0 peer"
          placeholder=" "
          required=""
          onChange={(e) => {
            inputOnChange("otp", e.target.value);
          }}
        />
        <label
          htmlFor="email"
          className="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
        >
          6 Digit Code
        </label>
      </div>
      <div className="flex justify-between items-center">
        <SubmitButton
          submit={submit}
          text="Next"
          className="text-white bg-themeColor focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center hover:bg-blue-700"
        />
        <ReverseTimer initialSeconds={120} />
      </div>
    </form>
  );
};

export default OtpVerifyForm;
