=begin
https://www.codewars.com/kata/53a1eac7e0afd3ad3300008b

TEST CASES
```
describe "Solution" do
  it "should test for something" do    
    Test.assert_equals(female(0), 1)
    Test.assert_equals(male(0), 0)
    Test.assert_equals(female(11), 7)
    Test.assert_equals(female(12), 8)
    Test.assert_equals(male(11), 7)
    Test.assert_equals(male(12), 7)
  end
end
```
=end

# my solution
def female(n)
  return 1 if n == 0
  n - male(female(n-1))
end

def male(n)
  return 0 if n == 0
  n - female(male(n-1))
end

# another solution
def female(n)
  n == 0 ? 1 : n - male(female(n-1))
end

def male(n)
  n == 0 ? 0 : n - female(male(n-1))
end
