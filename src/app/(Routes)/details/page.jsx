import CommentLists from "@/Components/News/CommentLists";
import NewsDetails from "@/Components/News/NewsDetails";
import PopularList from "@/Components/News/PopularList";
import PlainLayout from "@/Components/master/PlainLayout";
import Image from "next/image";
import React from "react";

async function getData(id) {
  const postDetails = await (
    await fetch(`${process.env.BASE_URL}/api/news/details?id=${id}`)
  ).json();
  const popular = await (
    await fetch(`${process.env.BASE_URL}/api/news/type?type=popular`)
  ).json();
  const commentLists = await (
    await fetch(`${process.env.BASE_URL}/api/comments/news?postID=${id}`)
  ).json();
  return { postDetails, popular, commentLists };
}

const details = async ({ searchParams }) => {
  const id = searchParams.id;
  const { postDetails, popular, commentLists } = await getData(id);
  // console.log(title);
  return (
    <PlainLayout>
      <div className="mt-5 container mx-auto">
        <div className="flex gap-4">
          <div className="mx-auto w-3/4 my-5 flex flex-col gap-5">
            <NewsDetails postDetails={postDetails}/>
            <CommentLists postID={id} data={commentLists}/>
          </div>
          <div className="w-1/4 lg:block hidden mb-5">
            <PopularList popularLists={popular}/>
          </div>
        </div>
      </div>
    </PlainLayout>
  );
};

export default details;
