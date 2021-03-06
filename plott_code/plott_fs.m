

function hl = plott_fs(varargin)
%     hl = plott_fs(varargin)
%     Like normal plot, but takes in an argument 'fs' and uses this to
%     generate a time vector.
%     FORMS
%         [hl] = plott_fs(x,...)            
%         [hl] = plott_fs(t,x,...)          
%         [hl] = plott_fs(x,'fs',fs,...)    
%         [hl] = plott_fs(t,x,'fs',fs,...)  
%     INTPUTS
%         t - input times, passed on to conventional plot function (spacing of t takes
%             priority over fs if both are passed)
%         x - input data, passed on to conventional plot function
%         fs - sampling rate (Default=1; when t is supplied fs is overridden by spacing of t )
%     OPTIONS
%         ... - name and value pairs that are passsed on to conventional plot
%     OUTPUT
%         hl - set of user keystrokes
    
    [reg, args]=parseparams(varargin);  % Regs should contain X and maybe t 
    [fs, args] = parse_pair(args,'fs',1);
    [t,X,fs] = sort_out_timeseries(reg,fs); % Assigns values to t, X, and fs. If available, the fs from t always overrides fs.
    
    hl = plot(t,X,args{:});
    
end