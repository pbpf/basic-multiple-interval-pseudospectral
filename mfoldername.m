function ph=mfoldername(file,tag)
ph=[file,'\',tag];
[a,b,c]=mkdir(ph);
end