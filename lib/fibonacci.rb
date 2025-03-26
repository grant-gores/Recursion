def fibs(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2
  
    fib_sequence = [0, 1]
    
    (n - 2).times do
      fib_sequence << fib_sequence[-1] + fib_sequence[-2]
    end
  
    fib_sequence
  end

  def fibs_rec(n, fib_sequence = [0, 1])
    return [] if n == 0
    return [0] if n == 1
    return fib_sequence if fib_sequence.length == n
  
    fib_sequence << fib_sequence[-1] + fib_sequence[-2]
    fibs_rec(n, fib_sequence)
  end