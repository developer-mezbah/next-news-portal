import React from 'react'
const Button = (props) => {
    if(props.submit===false){
        return  <button onClick={props.onClick} type="submit" className={props.className || "bg-themeColor text-white focus:ring-4 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-blue-800"}>{props.text}</button>
    }else {
        return (
            <button disabled={true} className={props.className || ""}><div className="bg-themeColor text-white focus:ring-4 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-blue-800" role="status"></div> Processing...</button>
        );
    }
};
// const Button = ({text}) => {
//   return (
//     <>
//         <button type="button" className="bg-themeColor text-white focus:ring-4 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-blue-800">{text}</button>
//     </>
//   )
// }

export default Button