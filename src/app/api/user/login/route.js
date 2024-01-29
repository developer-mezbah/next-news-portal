import { CreateToken } from "@/utility/JWTTokenHelper";
import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

export async function POST(req, res) {
  try {
    const reqbody = await req.json();
    const prisma = new PrismaClient();
    const result = await prisma.users.findUnique({ where: reqbody });

    if (result === 0) {
      return NextResponse.json({ status: "fail", data: result });
    } else {
      const token = await CreateToken(result["email"], result["id"]);

      const expireDuration = new Date(Date.now() + 24 * 60 * 60 * 1000); // current time + hour * menute * second * milisecond

      const cookieString = `token=${token}; expires=${expireDuration.toUTCString()};path=/`; // path = je kono path er jonno kaj korbe

      return NextResponse.json(
        { status: "success", data: token },
        { status: 200, headers: { "set-cookie": cookieString } }
      );
    }
  } catch (error) {
    return NextResponse.json({ status: "fail", data: error });
  }
}


// Logout Functionality
export async function GET(req, res) {
  const expireDuration = new Date(Date.now() - 24 * 60 * 60 * 1000);
  const response = NextResponse.redirect(new URL('/', req.url))
  response.cookies.set('token', "", {expires: expireDuration})
  return response
}
