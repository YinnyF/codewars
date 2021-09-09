/*
https://www.codewars.com/kata/53921994d8f00b93df000bea
*/

// My solution
function contentWeight(bottleWeight, scale) {
  let number = parseInt(scale.match(/\d+/g)[0]);
  let k;
  
  if (scale.includes('smaller')) {
    k = (1 / number);
  } else {
    k = number;
  }
  return (bottleWeight * k) / (k + 1);
}
