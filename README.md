# TJNGram

It's common to see Chinese, Jananse and Korean articles contain some English, but it's not common to see an n-gram library which can parse this sort of articles. TJNGram was made for solving this problem.

## Install

    gem install tjngram

## Usage

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

    TJNGram.process(2, text) #=> {"一個"=>2, "これ"=>2, "is an"=>2, ...}