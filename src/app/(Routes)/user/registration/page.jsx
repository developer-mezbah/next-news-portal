import PlainLayout from "@/Components/master/PlainLayout";
import RegisterForm from "@/Components/user/RegisterForm";
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
      <RegisterForm />
    </PlainLayout>
  );
};

export default Page;
