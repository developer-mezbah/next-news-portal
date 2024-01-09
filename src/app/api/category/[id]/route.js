
import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";


export async function GET(req, res){
    try {
        const id = res.params.id;
        const prisma = new PrismaClient();
        const result = await prisma.categories.findUnique({
            where: {id: parseInt(id)},
            select: {name: true}
        })
        return NextResponse.json({status: "success", data: result})
    } catch (error) {
        return NextResponse.json({status: "fail", data: error})
    }
}