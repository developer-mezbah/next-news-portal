import PlainLayout from "@/Components/master/PlainLayout";
import parse from "html-react-parser";

async function getData() {
  const data = await (
    await fetch(`${process.env.BASE_URL}/api/policy?type=privacy`)
  ).json()
  return data
}

const page = async () => {
  let data = await getData();
  return (
    <PlainLayout>
      <div className="container mx-auto">
        <h2 className="text-4xl mt-16 mb-2">
          <span className="text-themeColor font-bold">Privacy</span>
        </h2>
        <div className="my-5">{parse(data?.data[0]["long_des"])}</div>
      </div>
    </PlainLayout>
  );
};

export default page;
