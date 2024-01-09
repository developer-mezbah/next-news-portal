import Image from "next/image";
import { IoSendSharp } from "react-icons/io5";
import { CgProfile } from "react-icons/cg";

const CommentLists = ({ postID, data }) => {
  
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
        <input
          className="w-full border-2 border-themeColor outline-none py-2 px-3 rounded-md"
          type="text"
          placeholder="Write a comment..."
        />
        <button className="text-4xl text-themeColor" type="submit">
          <IoSendSharp />
        </button>
      </div>
      {/* comments  Lists*/}
      <div>
        {data &&
          data.data.map((item) => (
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
