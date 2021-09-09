/*
https://www.codewars.com/kata/55b42574ff091733d900002f
*/

// my solution
function friend(friends){
  let buddy = [];
  for (let people of friends) {
    if (people.length === 4) {
      buddy.push(people);
    }
  }
  return buddy;
}
