import PlainLayout from "@/Components/master/PlainLayout";

const Page = () => {
  return (
    <PlainLayout>
      <form className="max-w-xl lg:mx-auto my-10 mx-5">
        <h2 className="text-2xl mt-16 wavy-underline pb-8">
          <span className="text-themeColor font-bold">Email Address</span>
        </h2>
        <div className="relative z-0 w-full mb-5 group">
          <input
            type="email"
            name="email"
            id="email"
            className="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none  focus:border-themeColor focus:outline-none focus:ring-0 peer"
            placeholder=" "
            required=""
          />
          <label
            htmlFor="email"
            className="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
          >
            email
          </label>
        </div>

        <button
          type="submit"
          className="text-white bg-themeColor focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center hover:bg-blue-700"
        >
          Submit
        </button>
      </form>
    </PlainLayout>
  );
};

export default Page;
