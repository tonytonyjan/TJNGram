module TJNGram
  def self.process n, content
    # matche Chinese, English, Japanes and Korean words
    pattern = %r((\w+)|([\u3041-\u9FFF]))
    # record if the token is an English word
    is_english = {}
    
    # tokenize
    tokens = []
    content.scan(pattern){|e,c|
      is_english[e || c] = e ? true : false
      tokens << (e || c)
    }
    
    resault = Hash.new(0)
    n.times{|i|
      tokens.each_slice(n){|slice|
        key = ""
        pre_state = nil
        slice.each{|token|
          key << " " if !pre_state.nil? && (pre_state || is_english[token])
          key << token
          pre_state = is_english[token]
        }
        resault[key] += 1
      }
      tokens.shift
    }
    resault
  end
end