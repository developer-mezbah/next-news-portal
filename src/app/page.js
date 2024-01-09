import Hero from "@/Components/News/Hero";
import NewsList from "@/Components/News/NewsList";
import PopularList from "@/Components/News/PopularList";
import PlainLayout from "@/Components/master/PlainLayout";
import React from "react";

async function getData() {
  const slider = await (
    await fetch(process.env.BASE_URL + "/api/news/type?type=Slider")
  ).json();
  const featured = await (
    await fetch(process.env.BASE_URL + "/api/news/type?type=Featured")
  ).json();
  const popular = await (
    await fetch(process.env.BASE_URL + "/api/news/type?type=Popular")
  ).json();
  const latest = await (
    await fetch(process.env.BASE_URL + "/api/news/latest-post")
  ).json();
  return { slider: slider, featured: featured, popular: popular, latest };
}

const page = async () => {
  const { slider, featured, popular, latest } = await getData();
  return (
    <PlainLayout>
      <Hero sliders={slider.data} featured={featured.data} />
      <div className="mt-5 container mx-auto">
        <h2 className="text-4xl mt-16">LATEST</h2>
        <hr />
        <div className="flex gap-4">
          <div className="lg:w-3/4 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5 my-10 mx-auto">
            <NewsList latest={latest} />
          </div>
          <div className="w-1/4 lg:block hidden">
            <PopularList popularLists={popular}/>
          </div>
        </div>
      </div>
    </PlainLayout>
  );
};

export default page;
