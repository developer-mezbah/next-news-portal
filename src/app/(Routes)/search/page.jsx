import NewsList from "@/Components/News/NewsList";
import PopularList from "@/Components/News/PopularList";
import PlainLayout from "@/Components/master/PlainLayout";
import React from "react";

async function getData(keyword) {
  const searchData = await (await fetch(`${process.env.BASE_URL}/api/news/search?keyword=${keyword}`)).json()
  const popular = await (await fetch(`${process.env.BASE_URL}/api/news/type?type=Popular`)).json()
  return {searchData, popular}
}


const search = async ({searchParams}) => {
  const keyword = searchParams.keyword
  const {searchData, popular} = await getData(keyword)
  return (
    <PlainLayout>
      <div className="mt-5 container mx-auto">
        <h2 className="text-4xl mt-16 mb-2">
          Search For:- <span className="text-themeColor font-bold">{keyword}</span>
        </h2>
        <hr />
        <div className="flex gap-4">
          <div className="lg:w-3/4 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5 my-10 mx-auto">
            <NewsList latest={searchData} />
          </div>
          <div className="w-1/4 lg:block hidden">
            <PopularList popularLists={popular}/>
          </div>
        </div>
      </div>
    </PlainLayout>
  );
};

export default search;
