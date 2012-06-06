require '../lib/tjngram'

text = <<eos
這是一個範例。
This is an example.
これは例です。

這裡有一個蘋果。
There is an apple.
これはリンゴです。
eos

puts text, "=========="

p TJNGram.process(2, text)
