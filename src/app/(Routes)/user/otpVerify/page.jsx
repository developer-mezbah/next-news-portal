
import PlainLayout from "@/Components/master/PlainLayout";
import OtpVerifyForm from "@/Components/user/OtpVerifyForm";
import { cookies } from "next/headers";
import { redirect } from "next/navigation";

const Page = () => {
  const cookieStore = cookies()
  const token = cookieStore.get('token')
  if(typeof token!=='undefined'){
    redirect('/')
  }
  return (
    <PlainLayout>
      <OtpVerifyForm/>
    </PlainLayout>
  );
};

export default Page;
