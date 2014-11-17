function [P] = load_pattern_properties(fname, n)
fid = fopen(fname,'r');
while(1)
   line = fgetl(fid);
   [m,line] = strtok(line);
   [m,id] = strtok(m,'=');
   N = 0;
   if (~isempty(id))
      N = str2num(id(2:size(id,2)));
   end
   if (N == n), break, end
   if ~isstr(line), break, end
end
i = 1;
while (1) 
   [P{i},line] = strtok(line);
   if isempty(line), break, end
   i = i + 1;
end
fclose(fid);

