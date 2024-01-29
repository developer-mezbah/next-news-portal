import { PrismaClient } from "@prisma/client";
import { Toaster } from "react-hot-toast";
import Footer from "./footer/Footer";
import AppNavbar from "./navbar/AppNavbar";
import TopNavbar from "./navbar/TopNavbar";
import { cookies } from "next/headers";

async function getData() {
  const prisma = new PrismaClient();
  const social = await prisma.socials.findMany({});
  const categories = await prisma.categories.findMany({});
  return { social: social, categories: categories };
}

const PlainLayout = async (props) => {
  const { social, categories } = await getData();

  const cookieStore = cookies()
  const token = cookieStore.get('token')
  let isLogin = false
  isLogin = typeof token !== "undefined"
  return (
    <div>
      <TopNavbar socialData={social} />
      <Toaster position="bottom-center" />
      <AppNavbar isLogin={isLogin} categories={categories} />
      {props.children}
      <Footer data={{ social, categories }} />
    </div>
  );
};

export default PlainLayout;
