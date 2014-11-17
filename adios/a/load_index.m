function [L, i] = load_index(fname)

fid = fopen(fname,'r');
i = 1;
while 1
      line = fgetl(fid);
      L{i}=line;
      if ~isstr(line), break, end
      i = i + 1;
end
fclose(fid);