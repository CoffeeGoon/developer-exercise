class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    output = ''
    caps = false
    space = true
    chars = 0
    mr = 'marklar'
    meer = 'Marklar'
    pc = ''
    limit = str.length
    counter  = 0
while counter < limit do 
      
      temp = str[counter]
      if !space and temp == ' '
          space = true;
         if chars < 5
          output += pc;
         elsif caps
          output += meer
           if  ! pc[pc.length - 1].match(/^[[:alnum:]]$/)
            output += pc[pc.length - 1]
          end
         else
         output += mr
         if  ! pc[pc.length - 1].match(/^[[:alnum:]]$/)
            output += pc[pc.length - 1]
          end
         end
          pc = ' '
          chars = 0
          caps = false
      end

      if temp == ' ' and space 
          chars = 0
          caps = false
      end

        if !space and temp  != ' '
           chars = chars + 1
          pc = pc + temp  
        end

      if space and temp != ' '
          output += pc
          pc = temp
         chars = chars + 1 
         space = false
         if temp.upcase == temp
         caps = true
          end
      end
      counter = counter + 1
end

  if chars < 5
          output += pc;
  elsif caps
        output += meer
        if  ! pc[pc.length - 1].match(/^[[:alnum:]]$/)
            output += pc[pc.length - 1]
          end
  else
        output += mr
        if  ! pc[pc.length - 1].match(/^[[:alnum:]]$/)
            output += pc[pc.length - 1]
          end
  end
     output
    # TODO: Implement this method
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    prev = 0;
    beg = 1;
    composite = 0;
   (1..(nth - 1)).each do |counter|
      val = beg + prev
      prev = beg
      beg = val
      if val % 2 == 0
        composite += val
    end
    end
    # TODO: Implement this method
    composite
  end

end
