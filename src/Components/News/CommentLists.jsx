"use client";
import { ErrorToast, IsEmpty, SuccessToast } from "@/utility/FormHelper";
import Image from "next/image";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { CgProfile } from "react-icons/cg";
import { IoSendSharp } from "react-icons/io5";

const CommentLists = (props) => {
  let router = useRouter();
  let [data, setData] = useState({
    postID: parseInt(props.postID),
    descriptions: "",
  });
  let [submit, setSubmit] = useState(false);

  const inputOnChange = (name, value) => {
    setData((data) => ({
      ...data,
      [name]: value,
    }));
  };

  const formSubmit = async () => {
    if (IsEmpty(data.descriptions)) {
      ErrorToast("Descriptions Required!");
    } else {
      setSubmit(true);
      const options = { method: "POST", body: JSON.stringify(data) };
      let res = await (await fetch("/api/comments/manage", options)).json();
      setSubmit(false);
      if (res["status"] === "success") {
        SuccessToast("Request Completed");
        router.refresh();
      } else {
        router.replace("/user/login");
      }
    }
  };

  return (
    <div>
      <h2 className="text-4xl mt-16 mb-2">
        <span className="text-themeColor font-bold">Comments</span>
      </h2>
      <hr />
      <div className="flex items-center justify-center gap-3 mt-5">
        <Image
          className="rounded-full"
          width={50}
          height={50}
          src={"/images/avtar.jpg"}
          alt="profile image"
        />
        <textarea
          className="w-full border-2 border-themeColor outline-none py-2 px-3 rounded-md"
          type="text"
          placeholder="Write a comment..."
          value={data.descriptions}
          rows={6}
          onChange={(e) => {
            inputOnChange("descriptions", e.target.value);
          }}
        />
        <button
          onClick={formSubmit}
          className="text-4xl text-themeColor"
          type="submit"
        >
          <IoSendSharp />
        </button>
      </div>
      {/* comments  Lists*/}
      <div>
        {props.commentLists &&
          props.commentLists.data.map((item) => (
            <div key={item.id} className="space-y-3 sm:ml-16 mt-10">
              <div className="flex items-center gap-2">
                <span className="text-2xl">
                  <CgProfile />
                </span>
                <span>{item.users.firstName + " " + item.users.lastName}</span>
              </div>

              <p>{item.descriptions}</p>
              <hr />
            </div>
          ))}
      </div>
    </div>
  );
};

export default CommentLists;
