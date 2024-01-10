"use client";
import React, { useState, useEffect } from "react";

const ReverseTimer = ({ initialSeconds }) => {
  const [seconds, setSeconds] = useState(initialSeconds);

  useEffect(() => {
    const intervalId = setInterval(() => {
      setSeconds((prevSeconds) => prevSeconds - 1);
    }, 1000);

    // Clear the interval when the component is unmounted or when seconds reach zero
    return () => clearInterval(intervalId);
  }, [seconds]);

  return (
    <div>
      {seconds > 0 ? (
        <p className="text-2xl">
          Time remaining:{" "}
          {seconds > 60 ? (
            <>
              1<small>m</small>
              {" " + Math.floor(seconds / 2)}
            </>
          ) : (
            seconds
          )}
          <small>s</small>
        </p>
      ) : (
        <p className="text-2xl">Time s up!</p>
      )}
    </div>
  );
};

export default ReverseTimer;
