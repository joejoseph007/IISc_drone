function [Xp,Yp,Zp,Xc,Zc,X,Y,Z,Fx,Fy,Fz,P,FL,FD,Chord] = Func(import,A)
%%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% Xp X coordinate of Center of Pressure
% Yp Y coordinate of Center of Pressure
% Zp Z coordinate of Center of Pressure
% Xc X coordinate of Center of gravity
% Zc Z coordinate of Center of gravity
% 

res=2;
pow=10^res;
import.Xm=import.Xm*cosd(A)-import.Zm*sind(A);
import.Zm=import.Xm*sind(A)+import.Zm*cosd(A);
import=sortrows(import,-2);

Ym=import.Ym;
import.Ym=round(import.Ym,res);
import=sortrows(import,[-2 1]);
N=numel(import.Ym);

Xm=import.Xm;
Xm=round(Xm,res);


Xn=import.Xm;
Yn=import.Ym;
Zn=import.Zm;
ForceXN=import.ForceXN;
ForceYN=import.ForceYN;
ForceZN=import.ForceZN;
PressurePa=import.PressurePa;





%Yn=sprintf('%.0f',Ym);
i=2; T=0;
while i<=N
    K=i-1;   T=T+1; C(T,1)=0; 
        while Xm(K)==Xm(i) && i<N
        i=i+1;
        end
    C(T,1)=i;
    i=i+1;
end

i=2; T=0;
while i<=N
    K=i-1;   T=T+1; C(T,2)=0; 
    Chord(T,1)=0;
    X1(1,T)=0; Z1(1,T)=0;
        while Yn(K)==Yn(i) && i<N
        X1(i-K,T)=Xn(i-1);
        Z1(i-K,T)=Zn(i-1);
        i=i+1;
        end
    C(T,2)=i;
    Chord(T,1)=max(Xn(K:C(T,2)))-min(Xn(K:C(T,2)));
    X1(i-K,T)=Xn(i-1);
    Z1(i-K,T)=Zn(i-1);
    i=i+1;
end



i=2; T=0;
X=(Xn.'*PressurePa)/sum(PressurePa);
Y=(Ym.'*PressurePa)/sum(PressurePa);
Z=(Zn.'*PressurePa)/sum(PressurePa);

while i<=N
    K=i-1; T=T+1;
    Xp(T,1)=0;   Yp(T,1)=0;   Zp(T,1)=0; 
    Xc(T,1)=0;  Zc(T,1)=0;
    Fx(T,1)=0;  Fy(T,1)=0;   Fz(T,1)=0;
    
    while Yn(K)==Yn(i) && i<N 
        Xc(T)=Xc(T)+Xn(i-1);
        Zc(T)=Zc(T)+Zn(i-1);  
        Xp(T)=Xp(T)+Xn(i-1)*PressurePa(i-1);
        Zp(T)=Zp(T)+Zn(i-1)*PressurePa(i-1);
        Fx(T)=Fx(T)+ForceXN(i-1);
        Fy(T)=Fy(T)+ForceYN(i-1);
        Fz(T)=Fz(T)+ForceZN(i-1);
        i=i+1;
    end 
    if C(T)==0  
        Xc(T)=Xc(T)+Xn(i-1);
        Zc(T)=Zc(T)+Zn(i-1);    
        Xp(T)=Xp(T)+Xn(i-1)*PressurePa(i-1);
        Zp(T)=Zp(T)+Zn(i-1)*PressurePa(i-1);
        Fx(T)=Fx(T)+ForceXN(i-1);
        Fy(T)=Fy(T)+ForceYN(i-1);
        Fz(T)=Fz(T)+ForceZN(i-1);
        P(T)=P(T)+PressurePa(T,1); 
    end
    
Xp(T)=Xp(T)/sum(PressurePa(K:i-1));  
Zp(T)=Zp(T)/sum(PressurePa(K:i-1)); 
Yp(T,1)=Yn(K);
Xc(T)=Xc(T)/(C(T)+1);
Zc(T)=Zc(T)/(C(T)+1);
i=i+1;
end




i=2; T=2;  r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
while i<N && T<numel(C(:,1))
while Yn(i-1)==Yn(i) && i<N 
        P1x(r+1,g+1)=0; P2x(r+1,g+1)=0;
        P1y(r+1,g+1)=0; P2y(r+1,g+1)=0;
        P1z(r+1,g+1)=0; P2z(r+1,g+1)=0;
        K=i-1;
        while Xm(K)==Xm(i) && i<N 
        if Zn(i-1)>=((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) && i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P1x(r,g)=ForceXN(i-1)+P1x(r,g);
            P1y(r,g)=ForceYN(i-1)+P1y(r,g);
            P1z(r,g)=ForceZN(i-1)+P1z(r,g);
        end
        if Zn(i-1)<((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P2x(r,g)=ForceXN(i-1)+P2x(r,g);
            P2y(r,g)=ForceYN(i-1)+P2y(r,g);
            P2z(r,g)=ForceZN(i-1)+P2z(r,g);
        end
        i=i+1;
        end
        if i<N
        if Xm(i)~=Xm(i+1) && i<N
        if Zn(i-1)>=((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P1x(r,g)=ForceXN(i-1)+P1x(r,g);
            P1y(r,g)=ForceYN(i-1)+P1y(r,g);
            P1z(r,g)=ForceZN(i-1)+P1z(r,g);
            i=i+1;
        end
        if Zn(i-1)<((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P2x(r,g)=ForceXN(i-1)+P2x(r,g);
            P2y(r,g)=ForceYN(i-1)+P2y(r,g);
            P2z(r,g)=ForceZN(i-1)+P2z(r,g);
            i=i+1;
        end
        end
        end
        if i<N  && T<numel(C(:,1))
    T=T+1;    
    i=i+1;
        end
end
if i<N
if Yn(i)~=Yn(i+1) && i<N
P1x(r+1,g+1)=0; P2x(r+1,g+1)=0;
        P1y(r+1,g+1)=0; P2y(r+1,g+1)=0;
        P1z(r+1,g+1)=0; P2z(r+1,g+1)=0;
        K=i-1;
        while Xm(K)==Xm(i) && i<N
        if Zn(i-1)>=((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P1x(r,g)=ForceXN(i-1)+P1x(r,g);
            P1y(r,g)=ForceYN(i-1)+P1y(r,g);
            P1z(r,g)=ForceZN(i-1)+P1z(r,g);
            i=i+1;
        end
        if Zn(i-1)<((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P2x(r,g)=ForceXN(i-1)+P2x(r,g);
            P2y(r,g)=ForceYN(i-1)+P2y(r,g);
            P2z(r,g)=ForceZN(i-1)+P2z(r,g);
            i=i+1;
        end
        end
        if i<N
        if Xm(i)~=Xm(i+1) && i<N
        if Zn(i-1)>=((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P1x(r,g)=ForceXN(i-1)+P1x(r,g);
            P1y(r,g)=ForceYN(i-1)+P1y(r,g);
            P1z(r,g)=ForceZN(i-1)+P1z(r,g);
            i=i+1;
        end
        if Zn(i-1)<((max(Zn(C(T-1,1):C(T,1)))+min(Zn(C(T-1,1):C(T,1))))/2) &&i<N
            r=uint64((pow*Xm(i-1)+1)); g=uint64((-Yn(i-1)*pow+1));
            P2x(r,g)=ForceXN(i-1)+P2x(r,g);
            P2y(r,g)=ForceYN(i-1)+P2y(r,g);
            P2z(r,g)=ForceZN(i-1)+P2z(r,g);
            i=i+1;
        end
        end
        end
        if i<N  && T<numel(C(:,1))
    T=T+1;    
    i=i+1;
        end

end
end
if i-1<N
i=i+1;
end
end

P(:,:,1,1)=P1x;
P(:,:,2,1)=P1y;
P(:,:,3,1)=P1z;
P(:,:,1,2)=P2x;
P(:,:,2,2)=P2y;
P(:,:,3,2)=P2z;

FL=sum(ForceZN);
FD=sum(ForceXN);

P1x(~P1x)=NaN;
P1y(~P1y)=NaN;
P1z(~P1z)=NaN;
P2x(~P2x)=NaN;
P2y(~P2y)=NaN;
P2z(~P2z)=NaN;

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create contour
pcolor(P1x);
box(axes1,'on');
axis(axes1,'tight','square');
% Set the remaining axes properties
set(axes1,'BoxStyle','full','Layer','top');
saveas(fig,sprintf('ContourXTop%d.png',A+2));
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create contour
pcolor(P1y);
box(axes1,'on');
axis(axes1,'tight','square');
% Set the remaining axes properties
set(axes1,'BoxStyle','full','Layer','top');
saveas(fig,sprintf('ContourYTop%d.png',A+2));
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create contour
pcolor(P1z);
box(axes1,'on');
axis(axes1,'tight','square');
% Set the remaining axes properties
set(axes1,'BoxStyle','full','Layer','top');
saveas(fig,sprintf('ContourZTop%d.png',A+2));
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create contour
pcolor(P2x);
box(axes1,'on');
axis(axes1,'tight','square');
% Set the remaining axes properties
set(axes1,'BoxStyle','full','Layer','top');
saveas(fig,sprintf('ContourXBottom%d.png',A+2));
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create contour
pcolor(P2y);
box(axes1,'on');
axis(axes1,'tight','square');
% Set the remaining axes properties
set(axes1,'BoxStyle','full','Layer','top');
saveas(fig,sprintf('ContourYBottom%d.png',A+2));
close(fig);

fig = figure;
% Create axes
axes1 = axes('Parent',fig);
hold(axes1,'on');
% Create contour
pcolor(P2z);
box(axes1,'on');
axis(axes1,'tight','square');
% Set the remaining axes properties
set(axes1,'BoxStyle','full','Layer','top');
saveas(fig,sprintf('ContourZBottom%d.png',A+2));
close(fig);


end

