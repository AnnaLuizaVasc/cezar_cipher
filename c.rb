def cezar_cipher(string, aux)
    if(aux >= 52)
        aux = aux - (aux/26)*26 
    end
    
    if(aux >= 26 && aux < 52)
        aux = aux%26
    end
    
    string.each_byte do |c|
        new_string = ""
        if (c != 32)
            a = c + aux 
            if(a >= 91 && c >= 65 && c <= 90)
                a = 64 + aux
            elsif (a >= 123 && c >= 97 && c <= 122)
                a = 96 + a -122
            end
            new_string << a.chr
        else
            print " "
        end
        print new_string
    end
end

cezar_cipher("Anna Luiza Vasconcelos", 78)
