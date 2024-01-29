import toast from "react-hot-toast";
let EmailRegx = /\S+@\S+\.\S+/;
let MobileRegx = /(^(\+88|0088)?(01){1}[3456789]{1}(\d){8})$/;
class FormHelper {
  IsEmpty(value) {
    return value.length === 0;
  }
  IsMobile(value) {
    return MobileRegx.test(value);
  }
  IsEmail(value) {
    return !EmailRegx.test(value);
  }
  ErrorToast(msg) {
    toast.error(msg);
  }
  SuccessToast(msg) {
    toast.success(msg);
  }
  SetEmail(value) {
    sessionStorage.setItem("email", value);
  }
  GetEmail(value) {
    return sessionStorage.getItem("email");
  }

  SetOTP(value) {
    sessionStorage.setItem("otp", value);
  }
  GetOTP(value) {
    return sessionStorage.getItem("otp");
  }
}
export const {
  IsEmpty,
  IsMobile,
  IsEmail,
  ErrorToast,
  SuccessToast,
  SetEmail,
  GetEmail,
  GetOTP,
  SetOTP,
} = new FormHelper();
