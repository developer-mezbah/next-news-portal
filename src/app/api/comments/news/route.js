import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";


export async function GET(req, res){
    try {
        const {searchParams} = new URL(req.url);
        const postID = parseInt(searchParams.get('postID'))
        const prisma = new PrismaClient();
        const result = await prisma.comments.findMany({
            where: {postID},
            include: {
                users: {select: {firstName: true, lastName: true}}
            }
        })
        return NextResponse.json({status: "success", data: result})
    } catch (error) {
        return NextResponse.json({status: "fail", data: error})
    }
}