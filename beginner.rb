### 再帰関数とメモ化

def fib(n)
  return n if n <= 1
  return fib(n-2) + fib(n-1)
end

def fib_memo(n)
  @memo ||=  []
  @memo[n] ||= n <= 1 ? n : fib_memo(n-2) + fib_memo(n-1)
end

def demo
  i = 0
  while i <= 50
    puts fib_memo(i)
    i += 1
  end
end

#demo


### スタック



### キュー




