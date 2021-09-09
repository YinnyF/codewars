/* 
https://www.codewars.com/kata/51f2d1cafc9c0f745c00037d
*/

// My solution
function solution(str, ending){
  if (ending==="") {
    return true;
  };
  
  return str.substr(-ending.length) === ending
};
