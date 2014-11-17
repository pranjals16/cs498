function  pattern(n, proj_name)

id = n - 2;
sindex = sprintf('%s.idx', proj_name);
fid = fopen(sindex,'r');
m = 0;
while(1)
   line = fgetl(fid);    
   if (m == n), break, end
   if ~isstr(line), break, end
   m = m + 1;
end
if (line > -1)
   plot(0);
   H = text(0.5,0.5, line);
   set(H, 'FontSize' , [14]);
   return;
end
sindex = sprintf('%s.idx', proj_name);
stv = sprintf('%s.tv.txt', proj_name);
fid = fopen(stv,'r');
n = n - m + 1;
i = 1;
for j=1:n
   line = fgetl(fid);
   if ~isstr(line), break, end
end
if ~isstr(line)
   fprintf('Error: Pattern %d does not exist\n', id + 2);
   return
end
p = sscanf(line, '%d');
slc = sprintf('%s.clabels.txt', proj_name);
fid = fopen(slc,'r');
for j=1:n
   line = fgetl(fid);
   if ~isstr(line), break, end
end
c = sscanf(line, '%d');
[x,y,h,s] = treelayout(p');
treeplot(p');
sl = sprintf('%s.labels.txt', proj_name);
L = load_labels(sl,n);
so = sprintf('%s.results.txt', proj_name);
P = load_pattern_properties(so,id);
sf = sprintf('%s.fvalues.txt', proj_name);
F = load_labels(sf,n);

for i=1:size(L,2)-1
   if (or(c(i) == 0, c(i) ==3))
      H = text(x(i),y(i)- 0.025,L(i));
     set(H, 'Rotation',[90]);
      set(H, 'HorizontalAlignment', 'right');
   else
      H = text(x(i)+ 0.01,y(i)+ 0.01,L(i));
      H2 = text(x(i),y(i) + 0.05, F(i));
  end
  if (or(c(i) == 2, c(i) == 3)) 
      set(H, 'Color', [0 0 1]);
   else
      set(H, 'Color', [0 0 0]);  
   end
   if (or(c(i) == 0, c(i) == 3)) 
      set(H, 'FontSize' , [10]);
   else
      set(H, 'FontSize' , [14]);
   end
end
for i=1:size(P,2)
   H = text(0.01, 0.99 - i * 0.035,P(i));
   set(H, 'FontSize' , [8]);
end


