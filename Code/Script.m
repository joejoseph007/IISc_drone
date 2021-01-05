clearvars
[import]=importfile1('export-2.csv',1,36060);
A=1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,-2);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export-1.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,-1);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export0.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,0);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export1.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,1);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export2.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,2);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export3.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,3);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export4.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,4);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export5.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,5);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export6.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,6);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);

[import]=importfile1('export7.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,7);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);

[import]=importfile1('export8.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,8);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);

[import]=importfile1('export9.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,9);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);

[import]=importfile1('export10.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,10);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);

[import]=importfile1('export11.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,11);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export12.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,12);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export13.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,13);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export14.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,14);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export15.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,15);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export16.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,16);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export17.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,17);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export18.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,18);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[import]=importfile1('export19.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,19);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);



[import]=importfile1('export20.csv',1,36060);
A=A+1;
[Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),X(A,1),Y(A,1),Z(A,1),Fx(:,A),Fy(:,A),Fz(:,A),P(:,:,:,:,A),FL(:,A),FD(:,A),Chord(:,A)]=Func(import,20);
Tab=table(Xp(:,A),Yp(:,A),Zp(:,A),Xc(:,A),Zc(:,A),Fx(:,A),Fy(:,A),Fz(:,A),Chord(:,A),'VariableNames',{'Xp' 'Yp' 'Zp' 'Xc' 'Zc' 'ForceX' 'ForceY' 'ForceZ' 'Chord'});
Tab1=table(P(:,:,:,:,A),'VariableNames',{'Pressure'});
writetable(Tab,'1.xlsx','sheet',A);
writetable(Tab1,'Pressure.xlsx','sheet',A);


[I,J,K,L,F]=size(P);
[~,T]=max(abs(P),[],5);
i=1;
while i<=I
    j=1;
while j<=J
    k=1;
    while k<=K
        l=1;
        while l<=L
        Fmax(i,j,k,l)=P(i,j,k,l,T(i,j,k,l));
        l=l+1;
        end
        k=k+1; 
    end
    j=j+1;
end
i=i+1;
end


Fround=round(Fmax,3);
ForceX1=Fround(:,:,1,1);
ForceY1=-Fround(:,:,2,1);
ForceZ1=Fround(:,:,3,1);
ForceX2=Fround(:,:,1,2);
ForceY2=-Fround(:,:,2,2);
ForceZ2=Fround(:,:,3,2);

ForceX1(~ForceX1)=NaN;
ForceY1(~ForceY1)=NaN;
ForceZ1(~ForceZ1)=NaN;
ForceX2(~ForceX2)=NaN;
ForceY2(~ForceY2)=NaN;
ForceZ2(~ForceZ2)=NaN;

Tab2=table(ForceX1,ForceY1,ForceZ1,'VariableNames',{'Top_Fx' 'Top_Fy' 'Top_Fz'});
Tab3=table(ForceX2,ForceY2,ForceZ2,'VariableNames',{'Bottom_Fx' 'Bottom_Fy' 'Bottom_Fz'});

writetable(Tab2,'Max_Force.xlsx','Sheet',1);
writetable(Tab3,'Max_Force.xlsx','Sheet',2);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create surf
surf(ForceX1,'Parent',axes1);
% Create contour
contour(ForceX1);
view(axes1,[-37.5 30]);
grid(axes1,'on');
axis(axes1,'tight');
saveas(fig,'SurfaceXTop.png');
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create surf
surf(ForceY1,'Parent',axes1);
% Create contour
contour(ForceY1);
view(axes1,[-37.5 30]);
grid(axes1,'on');
axis(axes1,'tight');
saveas(fig,'SurfaceYTop.png');
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create surf
surf(ForceZ1,'Parent',axes1);
% Create contour
contour(ForceZ1);
view(axes1,[-37.5 30]);
grid(axes1,'on');
axis(axes1,'tight');
saveas(fig,'SurfaceZTop.png');
close(fig);


fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create surf
surf(ForceX2,'Parent',axes1);
% Create contour
contour(ForceX2);
view(axes1,[-37.5 30]);
grid(axes1,'on');
axis(axes1,'tight');
saveas(fig,'SurfaceXBottom.png');
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create surf
surf(ForceY2,'Parent',axes1);
% Create contour
contour(ForceY2);
view(axes1,[-37.5 30]);
grid(axes1,'on');
axis(axes1,'tight');
saveas(fig,'SurfaceYBottom.png');
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create surf
surf(ForceZ2,'Parent',axes1);
% Create contour
contour(ForceZ2);
view(axes1,[-37.5 30]);
grid(axes1,'on');
axis(axes1,'tight');
saveas(fig,'SurfaceZBottom.png');
close(fig);



P(~P)=NaN;

fig1=figure; I=1;
while I<=23
subaxis(6,4,I,'SpacingHoriz',0.02,'SpacingVert',0.02,'Margin',0.01);
imagesc(P(:,:,1,1,I));
axis off 
I=I+1;
end

saveas(fig1,'ContourXTop.png');
close(fig1);

fig1=figure; I=1;
while I<=23
subaxis(6,4,I,'SpacingHoriz',0.02,'SpacingVert',0.02,'Margin',0.01);
imagesc(P(:,:,2,1,I));
axis off
I=I+1;
end
saveas(fig1,'ContourYTop.png');
close(fig1);

fig1=figure; I=1;
while I<=23
subaxis(6,4,I,'SpacingHoriz',0.02,'SpacingVert',0.02,'Margin',0.01);
imagesc(P(:,:,3,1,I));
axis off
I=I+1;
end
saveas(fig1,'ContourZTop.png');
close(fig1);

fig1=figure; I=1;
while I<=23
subaxis(6,4,I,'SpacingHoriz',0.02,'SpacingVert',0.02,'Margin',0.01);
imagesc(P(:,:,1,2,I));
axis off
I=I+1;
end
saveas(fig1,'ContourXBottom.png');
close(fig1);

fig1=figure; I=1;
while I<=23
subaxis(6,4,I,'SpacingHoriz',0.02,'SpacingVert',0.02,'Margin',0.01);
imagesc(P(:,:,2,2,I));
axis off
I=I+1;
end
saveas(fig1,'ContourYBottom.png');
close(fig1);

fig1=figure; I=1;
while I<=23
subaxis(6,4,I,'SpacingHoriz',0.02,'SpacingVert',0.02,'Margin',0.01);
imagesc(P(:,:,3,2,I));
axis off 
I=I+1;
end
saveas(fig1,'ContourZBottom.png');
close(fig1);








