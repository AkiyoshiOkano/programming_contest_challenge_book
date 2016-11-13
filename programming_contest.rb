def solve1(n,m,k)
  f = false
  for a in 0..(n-1) do
    for b in 0..(n-1) do
      for c in 0..(n-1) do
        for d in 0..(n-1) do
          if k[a] + k[b] + k[c] + k[d] == m
            f = true
            pair = "[#{k[a]}, #{k[b]}, #{k[c]}, #{k[d]}]のとき、和は#{m}"
          end
        end
      end
    end
  end
  puts "Q1 くじびき"
  if f == true
    puts "A. Yes（#{pair}）"
  else
    puts "A. No"
  end
end

n = 3
m = 10
k = [1, 3, 5]

#solve1(n,m,k)

def solve2(n, a)
  answer = 0
  for i in 0..(n-1) do
    for j in (i+1)..(n-1) do
      for k in (j+1)..(n-1) do
        total_length = a[i] + a[j] + a[k]
        max_length = [a[i], a[j], a[k]].max
        rest = total_length - max_length

        if max_length < rest
          answer = [answer, total_length].max
          pair = "#{a[i]}, #{a[j]}, #{a[k]}"
        end
      end
    end
  end
  puts "Q2. 三角形"
  puts "A. #{answer}（#{pair}の組み合わせの時）"
end

n = 5
a = [2, 3, 4, 5, 10]

#solve2(n,a)

def solve3(length, ants)
  all_minT = 0
  all_maxT = 0

  ants.each do |i|
    distA = i
    distB = length - i

    ant_minT = [distA ,distB].min
    all_minT = ant_minT if ant_minT > all_minT

    ant_maxT = [distA ,distB].max
    all_maxT = ant_maxT if ant_maxT > all_maxT
  end

  puts "Q3. Ants（POJ No.1852）"
  puts "A. min = #{all_minT}, max = #{all_maxT}"
end

l = 10
n = 3
x = [2, 6, 7]

#solve3(l, x)


def binaly_search(x,k,n)
  l = 0
  r = n

  while r - l >= 1 do
    i = (l + r) / 2
    if k[i] == x
      return true
    elsif k[i] < x
      l = i + 1
    else
      r = i
    end
  end

  return false
end

def solve4(n,m,k)

  k.sort!

  f = false

  for a in 0..(n-1) do
    for b in 0..(n-1) do
      for c in 0..(n-1) do
        x = m - k[a] - k[b] - k[c]
        if binaly_search(x, k, n)
          f = true
          pair = "[#{k[a]}, #{k[b]}, #{k[c]}, #{x}]のとき、和は#{m}"
        end
      end
    end
  end

  puts "Q4 ハードルが上がった「くじびき」"
  if f == true
    puts "A. Yes, #{pair}"
  else
    puts "A. No"
  end
end

n = 3
m = 10
k = [1, 3, 5]

#solve4(n,m,k)



