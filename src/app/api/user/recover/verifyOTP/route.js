import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";


export async function POST(req, res){
    try {
        const reqBody = await req.json();
        const prisma = new PrismaClient();
        const count = await prisma.users.count({
            where: reqBody
        })
        if(count === 1){
            return NextResponse.json({status: "success", data: "Valid OTP Code"})
        }else{
            return NextResponse.json({status: "fail", data: "OTP is not valid!"})
        }
    } catch (error) {
        return NextResponse.json({status: "fail", data: error})
    }
}