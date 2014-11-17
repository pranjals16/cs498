function [L] = load_labels(fname, n)

fid = fopen(fname,'r');
i = 1;
while 1
   for j=1:n
      line = fgetl(fid);
   end
   R = ' ';
   while (1)       
      [L{i},R] = strtok(line);
      line = R;
      if isempty(line), break, end
      i = i + 1;
   end
   if ~isstr(line), break, end
end
fclose(fid);