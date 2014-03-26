

function logiout = build_logical(array, N)
    
    out = logical(zeros(1,N));
    for i = array
        out(i) = 1;
    end
    
    logiout = out;
    
end