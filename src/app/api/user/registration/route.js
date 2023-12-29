import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";


export async function POST(req, res){
    try {
        const reqBody = await req.json();
        reqBody.otp = "0"
        const prisma = new PrismaClient()
        
        const creatUser = await prisma.users.create({
            data: reqBody
        })
        return NextResponse.json({status: "success", data: creatUser})
    } catch (error) {
        return NextResponse.json({status: "fail", data: error})
    }
}