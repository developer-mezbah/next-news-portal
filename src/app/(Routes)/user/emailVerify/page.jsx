import PlainLayout from "@/Components/master/PlainLayout";
import EmailVerifyForm from "@/Components/user/EmailVerifyForm";
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
      <EmailVerifyForm/>
    </PlainLayout>
  );
};

export default Page;
