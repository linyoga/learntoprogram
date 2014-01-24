def music_shuffle filenames

filenames = filenames.sort
leng      = filenames.length

2.times do
  l_idx = 0
  r_idx = leng/2
  shuf = []
  
  while shuf.length < leng
    if shuf.length%2 == 0
      shuf.push(filenames[r_idx])
      r_idx = r_idx + 1
    else
      shuf.push(filenames[l_idx])
      l_idx = l_idx + 1
    end
  end

  filenames = shuf
end

arr = []
cut = rand(leng)
idx = 0

while idx < leng
  arr.push(filenames[(id+cut)%leng])
  idx = idx + 1
end
arr
  
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))