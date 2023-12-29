import nodemailer from 'nodemailer';

export async function SendEmail(EmailTo, EmailText, EmailSubject) {
  const Transport = nodemailer.createTransport({
    host:"mail.teamrabbil.com",
    port:25,
    secure:false,
    auth:{user:"info@teamrabbil.com", pass:"~sR4[bhaC[Qs"},
    tls:{rejectUnauthorized:false}
  });

  const mailOption = {
    from: "Mezbah Uddin news portal <info@teamrabbil.com>",
    to: EmailTo,
    subject: EmailSubject,
    text: EmailText
  }
  return await Transport.sendMail(mailOption)
}

