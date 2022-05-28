# This code will encrypt a string containing letters,
# numbers, spaces and punctuation marks using Caesar Cigher: shifts the 
# letters by a given factor. spaces and punctuation marks will remain the same.

def caesar_cipher(origi_msg,factor)
    uppercase = ("A".."Z").to_a
    lowercase = ("a".."z").to_a
    numbers = ("0".."9").to_a
    encrypted_arr=[]
    #origi_msg = "What t F34?"
    #factor = 5
    # convert the msg into array
    msg_arr = origi_msg.split("")

    # iterate for msg_arr

    for i in 0..msg_arr.length-1 do
        letter = msg_arr[i]
        factor_counter = factor
        # is  letter in UPPERCASE?
        if uppercase.include?(letter)
            idx = uppercase.index(letter)
            
        while factor_counter>0
                if idx < uppercase.length-1
                    idx += 1
                else idx = 0
                end
            factor_counter -= 1
            end
            encrypted_arr << uppercase[idx]
        # is letter in LOWERCASE?   
        elsif lowercase.include?(letter)
            idx = lowercase.index(letter)
            while factor_counter>0
                if idx < lowercase.length-1
                    idx += 1
                else idx = 0
                end
                factor_counter -= 1
            end
            encrypted_arr << lowercase[idx]

        # is letter in NUMBERS?
        elsif numbers.include?(letter)
            idx = numbers.index(letter)
            while factor_counter > 0
                if idx < numbers.length-1
                    idx +=1
                else idx = 0
                end
                factor_counter -=1
            end
            encrypted_arr << numbers[idx]

        # is letter a space or puctuation mark?
            else
            encrypted_arr << letter
        end

    end
    puts "\nOriginal message is: [#{origi_msg}]\nEncrypted message is: [#{encrypted_arr.join("")}]"

end


caesar_cipher("The code is 239CT!",8)
