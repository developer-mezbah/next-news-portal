import { SendEmail } from "@/utility/EmailUtility";
import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

export async function GET(req, res) {
  try {
    const prisma = new PrismaClient();
    const { searchParams } = new URL(req.url);
    const email = searchParams.get("email");

    // user count
    const count = await prisma.users.count({ where: { email: email } });

    if (count === 1) {
      const genCode = Math.floor(100000 + Math.random() * 900000);
      const emailText = `Your OTP code is=${genCode}`;
      const emailSubject = "Mezbah news portal verification code";

      await SendEmail(email, emailText, emailSubject);

      const result = await prisma.users.update({
        where: { email: email },
        data: { otp: genCode.toString() }
      });
      return NextResponse.json({ status: "success", data: result });
    } else {
      return NextResponse.json({ status: "fail", data: "no user found" });
    }
  } catch (error) {
    return NextResponse.json({ status: "fail", data: error });
  }
}
