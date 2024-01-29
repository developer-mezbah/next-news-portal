import { PrismaClient } from "@prisma/client";
import { headers } from "next/headers";
import { NextResponse } from "next/server";

export async function GET(req, res) {
  try {
    const headerList = headers();
    const id = parseInt(headerList.get("id"));

    const prisma = new PrismaClient();
    const result = await prisma.comments.findMany({
      where: { userID: id },
      include: { 
        news_list: { select: { title: true } },
      },
    });
    return NextResponse.json({ status: "success", data: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", data: error });
  }
}

export async function POST(req, res) {
  try {
    const headerList = headers();
    const id = parseInt(headerList.get("id"));

    let reqBody = await req.json();
    reqBody.userID = id;
    const prisma = new PrismaClient();
    const result = await prisma.comments.create({
      data: reqBody,
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", data: error });
  }
}

export async function DELETE(req, res) {
  try {
    const headerList = headers();
    const user_id = parseInt(headerList.get("id"));
    const reqBody = await req.json();
    const comment_id = parseInt(reqBody["id"]);

    const prisma = new PrismaClient();
    const result = await prisma.comments.deleteMany({
      where: {
        AND: [{ userID: user_id }, { id: comment_id }],
      },
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", data: error });
  }
}
