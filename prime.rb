require 'pry'

def prime?(n)
  # cannot use Prime so... 
  # 1st test n==1 or n%2==0 not prime
  if n<2 || n%2==0
    return puts "#{n} not prime"
  end
  # 2nd test Sieve of Erathosthenes
  # load all numbers to n into an array
  erathos=*(2..n)
  i=0
  # loop until we reach then end of the array
  until i==erathos.length
    if n==erathos[i]
      return puts "#{n} prime"
    else
      # p=prime_number, delete elements 2p, 3p.. from array
      j=2
      while j*erathos[i]<n
        erathos-=[j*erathos[i]]
        j+=1
      end
      # next_prime_number
      i+=1
    end
  end
  return puts "#{n} not prime"
end