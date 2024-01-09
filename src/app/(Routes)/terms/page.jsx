import PlainLayout from "@/Components/master/PlainLayout";
import parse from "html-react-parser";

async function getData() {
  return (
    await (await fetch(`${process.env.BASE_URL}/api/policy?type=terms`)).json()
  )["data"];
}

const page = async () => {
  let data = await getData();
  return (
    <PlainLayout>
      <div className="container mx-auto">
        <h2 className="text-4xl mt-16 mb-2">
          <span className="text-themeColor font-bold">Terms and Conditions</span>
        </h2>
        <div className="my-5">
          {parse(data[0]["long_des"])}
        </div>
      </div>
    </PlainLayout>
  );
};

export default page;
