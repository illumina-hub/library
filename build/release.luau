local a={cache={}}do do local function b()return nil end function a.a()local c=a.cache.a if not c then c={c=b()}a.cache.
a=c end return c.c end end do local function b()return nil end function a.b()local c=a.cache.b if not c then c={c=b()}a.
cache.b=c end return c.c end end do local function b()return{END_INPUT=Enum.UserInputState.End,MOUSE_INPUT=Enum.
UserInputType.MouseButton1,MOVE_INPUT=Enum.UserInputType.MouseMovement}end function a.c()local c=a.cache.c if not c then
c={c=b()}a.cache.c=c end return c.c end end do local function b()return{DEF_POSITION=UDim2.fromScale(0.5,0.5),DEF_SIZE=
UDim2.fromOffset(750,500),MIN_SIZE=UDim2.fromOffset(300,255),MAX_SIZE=UDim2.fromScale(1,1),MIN_CORNER=UDim.new(0,0),
MAX_CORNER=UDim.new(0,10)}end function a.d()local c=a.cache.d if not c then c={c=b()}a.cache.d=c end return c.c end end
do local function b()local c={}local function d(e,f)local g=e:Connect(f)table.insert(c,g)return function()local h=table.
find(c,g)if h then table.remove(c,h)end g:Disconnect()end end local function e()for f,g in c do g:Disconnect()end table.
clear(c)end return{new=d,clear=e}end function a.e()local c=a.cache.e if not c then c={c=b()}a.cache.e=c end return c.c
end end do local function b()local c,d,e,f,g,h,i=game:GetService'GuiService',game:GetService'UserInputService',a.c(),a.
d(),a.e(),workspace.CurrentCamera,{}i.__index=i function i.new(j,k)local l=(setmetatable({_dragging=false,_permission=
true,_startInput=nil,_startVector=nil,_lastPosition=nil,_inputChanged=nil},i))g.new(k.InputBegan,function(m)l:
_onInputBegan(m,j)end)g.new(k.InputEnded,function(m)l:_onInputEnded(m)end)return l end function i._resetState(j)j.
_dragging=false j._startInput=nil j._startVector=nil if j._inputChanged then j._inputChanged()end end function i.
setPermission(j,k)j._permission=k if not k then j:_resetState()end end function i.getLastPosition(j)return j.
_lastPosition or f.DEF_POSITION end function i._onInputBegan(j,k,l)if not j._permission or k.UserInputType~=e.
MOUSE_INPUT then return end local m,n=k.Position,l.AbsolutePosition j._dragging=true j._startInput=k j._startVector=
Vector2.new(m.X-n.X,m.Y-n.Y)j._inputChanged=g.new(d.InputChanged,function(o)j:_onInputChanged(o,l)end)end function i.
_onInputChanged(j,k,l)if not j._dragging or not j._permission then return end if not j._startInput or not j._startVector
then return end if k.UserInputState==e.END_INPUT or j._startInput.UserInputState==e.END_INPUT then j:_resetState()return
end if k.UserInputType==e.MOVE_INPUT then j:_moveObject(k,l)end end function i._onInputEnded(j,k)if k.UserInputType==e.
MOUSE_INPUT then j:_resetState()end end function i._moveObject(j,k,l)if not j._startVector then return end local m,n,o,p
,q=h.ViewportSize,c:GetGuiInset(),k.Position,l.AbsoluteSize,l.AnchorPoint local r,s=o.X-j._startVector.X,o.Y-j.
_startVector.Y+n.Y local t,u=r+(p.X*q.X),s+(p.Y*q.Y)local v,w=t/m.X,u/m.Y local x=UDim2.fromScale(v,w)l.Position=x j.
_lastPosition=x end return i end function a.f()local c=a.cache.f if not c then c={c=b()}a.cache.f=c end return c.c end
end do local function b()local c,d,e=gethui()or cloneref(game:GetService'CoreGui'),a.d(),a.a()return function(f)local g=
c:FindFirstChild'Illumina'if g then g:Destroy()end local h=Instance.new'ScreenGui'h.Name='Illumina'h.DisplayOrder=6 h.
IgnoreGuiInset=true h.ResetOnSpawn=false h.ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets local i=Instance.new'Frame'i.
Name='Container'i.AnchorPoint=Vector2.new(0.5,0.5)i.BackgroundColor3=Color3.fromRGB(10,10,10)i.BorderColor3=Color3.
fromRGB(0,0,0)i.BorderSizePixel=0 i.Position=d.DEF_POSITION i.Size=d.DEF_SIZE local j=Instance.new'UIStroke'j.Name=
'UIStroke'j.ApplyStrokeMode=Enum.ApplyStrokeMode.Border j.Color=Color3.fromRGB(47,47,47)j.Parent=i local k=Instance.new
'UICorner'k.Name='UICorner'k.CornerRadius=UDim.new(0,10)k.Parent=i local l=Instance.new'UIListLayout'l.Name=
'UIListLayout'l.HorizontalAlignment=Enum.HorizontalAlignment.Center l.SortOrder=Enum.SortOrder.LayoutOrder l.Parent=i
local m=Instance.new'Frame'm.Name='Header'm.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1 m.
BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Size=UDim2.new(1,0,0,50)local n=Instance.new'UIListLayout'n.Name
='UIListLayout'n.FillDirection=Enum.FillDirection.Horizontal n.SortOrder=Enum.SortOrder.LayoutOrder n.VerticalAlignment=
Enum.VerticalAlignment.Center n.Parent=m local o=Instance.new'UIPadding'o.Name='UIPadding'o.PaddingBottom=UDim.new(0,15)
o.PaddingLeft=UDim.new(0,15)o.PaddingRight=UDim.new(0,15)o.PaddingTop=UDim.new(0,15)o.Parent=m local p=Instance.new
'TextLabel'p.Name='Title'p.BackgroundColor3=Color3.fromRGB(255,255,255)p.BackgroundTransparency=1 p.BorderColor3=Color3.
fromRGB(0,0,0)p.BorderSizePixel=0 p.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,
Enum.FontStyle.Normal)p.Size=UDim2.new(1,-110,1,0)p.Text='Illumina'p.TextColor3=Color3.fromRGB(207,207,207)p.TextSize=16
p.TextXAlignment=Enum.TextXAlignment.Left p.Parent=m local q=Instance.new'TextButton'q.Name='Close'q.AutoButtonColor=
false q.BackgroundColor3=Color3.fromRGB(255,255,255)q.BackgroundTransparency=1 q.BorderColor3=Color3.fromRGB(0,0,0)q.
BorderSizePixel=0 q.InputSink=Enum.InputSink.None q.LayoutOrder=3 q.Size=UDim2.fromOffset(40,40)q.Text=''q.TextColor3=
Color3.fromRGB(0,0,0)q.TextSize=14 local r=Instance.new'ImageLabel'r.Name='Icon'r.AnchorPoint=Vector2.new(0.5,0.5)r.
BackgroundColor3=Color3.fromRGB(255,255,255)r.BackgroundTransparency=1 r.BorderColor3=Color3.fromRGB(0,0,0)r.
BorderSizePixel=0 r.Image='rbxassetid://74451597845240'r.ImageColor3=Color3.fromRGB(207,207,207)r.Position=UDim2.
fromScale(0.5,0.5)r.Size=UDim2.fromOffset(20,20)r.Parent=q q.Parent=m local s=Instance.new'TextButton's.Name='Expand's.
AutoButtonColor=false s.BackgroundColor3=Color3.fromRGB(255,255,255)s.BackgroundTransparency=1 s.BorderColor3=Color3.
fromRGB(0,0,0)s.BorderSizePixel=0 s.InputSink=Enum.InputSink.None s.LayoutOrder=2 s.Size=UDim2.fromOffset(40,40)s.Text=
''s.TextColor3=Color3.fromRGB(0,0,0)s.TextSize=14 local t=Instance.new'ImageLabel't.Name='Icon't.AnchorPoint=Vector2.
new(0.5,0.5)t.BackgroundColor3=Color3.fromRGB(255,255,255)t.BackgroundTransparency=1 t.BorderColor3=Color3.fromRGB(0,0,0
)t.BorderSizePixel=0 t.Image='rbxassetid://92682004738840't.ImageColor3=Color3.fromRGB(207,207,207)t.Position=UDim2.
fromScale(0.5,0.5)t.Size=UDim2.fromOffset(20,20)t.Parent=s s.Parent=m local u=Instance.new'TextButton'u.Name='Minimize'u
.AutoButtonColor=false u.BackgroundColor3=Color3.fromRGB(255,255,255)u.BackgroundTransparency=1 u.BorderColor3=Color3.
fromRGB(0,0,0)u.BorderSizePixel=0 u.InputSink=Enum.InputSink.None u.LayoutOrder=1 u.Size=UDim2.fromOffset(40,40)u.Text=
''u.TextColor3=Color3.fromRGB(0,0,0)u.TextSize=14 local v=Instance.new'ImageLabel'v.Name='Icon'v.AnchorPoint=Vector2.
new(0.5,0.5)v.BackgroundColor3=Color3.fromRGB(255,255,255)v.BackgroundTransparency=1 v.BorderColor3=Color3.fromRGB(0,0,0
)v.BorderSizePixel=0 v.Image='rbxassetid://83770212086491'v.ImageColor3=Color3.fromRGB(207,207,207)v.Position=UDim2.
fromScale(0.5,0.5)v.Size=UDim2.fromOffset(20,20)v.Parent=u u.Parent=m m.Parent=i local w=Instance.new'Frame'w.Name=
'Divider'w.BackgroundColor3=Color3.fromRGB(47,47,47)w.BorderColor3=Color3.fromRGB(0,0,0)w.BorderSizePixel=0 w.
LayoutOrder=1 w.Size=UDim2.new(1,0,0,1)w.Parent=i local x=Instance.new'Frame'x.Name='Group'x.BackgroundColor3=Color3.
fromRGB(255,255,255)x.BackgroundTransparency=1 x.BorderColor3=Color3.fromRGB(0,0,0)x.BorderSizePixel=0 x.LayoutOrder=2 x
.Size=UDim2.new(1,0,1,-51)local y=Instance.new'UIListLayout'y.Name='UIListLayout'y.FillDirection=Enum.FillDirection.
Horizontal y.SortOrder=Enum.SortOrder.LayoutOrder y.VerticalAlignment=Enum.VerticalAlignment.Center y.Parent=x local z=
Instance.new'ScrollingFrame'z.Name='Tabs'z.Active=true z.AutomaticCanvasSize=Enum.AutomaticSize.Y z.BackgroundColor3=
Color3.fromRGB(255,255,255)z.BackgroundTransparency=1 z.BorderColor3=Color3.fromRGB(0,0,0)z.BorderSizePixel=0 z.
CanvasSize=UDim2.fromScale(0,0.5)z.ScrollBarImageColor3=Color3.fromRGB(0,0,0)z.ScrollBarImageTransparency=1 z.
ScrollBarThickness=0 z.ScrollingDirection=Enum.ScrollingDirection.Y z.Size=UDim2.new(0,200,1,0)local A=Instance.new
'UIListLayout'A.Name='UIListLayout'A.HorizontalAlignment=Enum.HorizontalAlignment.Center A.Padding=UDim.new(0,10)A.
SortOrder=Enum.SortOrder.LayoutOrder A.Parent=z local B=Instance.new'UIPadding'B.Name='UIPadding'B.PaddingBottom=UDim.
new(0,15)B.PaddingLeft=UDim.new(0,15)B.PaddingRight=UDim.new(0,15)B.PaddingTop=UDim.new(0,15)B.Parent=z z.Parent=x local
C=Instance.new'Frame'C.Name='Divider'C.BackgroundColor3=Color3.fromRGB(47,47,47)C.BorderColor3=Color3.fromRGB(0,0,0)C.
BorderSizePixel=0 C.LayoutOrder=1 C.Size=UDim2.new(0,1,1,0)C.Parent=x local D=Instance.new'Frame'D.Name='Sections'D.
BackgroundColor3=Color3.fromRGB(255,255,255)D.BackgroundTransparency=1 D.BorderColor3=Color3.fromRGB(0,0,0)D.
BorderSizePixel=0 D.LayoutOrder=2 D.Size=UDim2.new(1,-201,1,0)D.Parent=x x.Parent=i i.Parent=h h.Parent=c return{
illumina=h,container=i,corner=k,header=m,minimize=u,expand=s,close=q,tabs=z,sections=D}end end function a.g()local c=a.
cache.g if not c then c={c=b()}a.cache.g=c end return c.c end end do local function b()local c,d,e,f,g,h,i,j,k,l,m,n,o,p
,q,r=true,6.781684027777778E-8,1E-4,math.rad(0.01),math.rad(0.1),1e-5,game:GetService'RunService',math.pi,math.exp,math.
sin,math.cos,math.min,math.max,math.sqrt,math.atan2,math.round local function s(t)local u=0 for v,w in t do u+=w^2 end
return u end local function t(u,v)local w=0 for x,y in u do w+=(v[x]-y)^2 end return w end local u={}do u.__index=u
function u.new(v,w,x,y,z)local A=z.toIntermediate(x)return setmetatable({d=v,f=w,g=A,p=A,v=table.create(#A,0),typedat=z,
rawGoal=y},u)end function u.setGoal(v,w)v.rawGoal=w v.g=v.typedat.toIntermediate(w)end function u.setDampingRatio(v,w)v.
d=w end function u.setFrequency(v,w)v.f=w end function u.canSleep(v)if s(v.v)>e then return false end if t(v.p,v.g)>d
then return false end return true end function u.step(v,w)local x,y,z,A,B=v.d,v.f*(2*j),v.g,v.p,v.v if x==1 then local C
=k(-y*w)local D=w*C local E,F,G=C+D*y,C-D*y,D*y*y for H=1,#A do local I=A[H]-z[H]A[H]=I*E+B[H]*D+z[H]B[H]=B[H]*F-I*G end
elseif x<1 then local C,D=k(-x*y*w),p(1-x*x)local E,F,G=m(w*y*D),(l(w*y*D))if D>h then G=F/D else local H=w*y G=H+((H*H)
*(D*D)*(D*D)/20-D*D)*(H*H*H)/6 end local H if y*D>h then H=F/(y*D)else local I=y*D H=w+((w*w)*(I*I)*(I*I)/20-I*I)*(w*w*w
)/6 end for I=1,#A do local J=A[I]-z[I]A[I]=(J*(E+G*x)+B[I]*H)*C+z[I]B[I]=(B[I]*(E-G*x)-J*(G*y))*C end else local C=p(x*
x-1)local D,E=-y*(x+C),-y*(x-C)local F,G=k(D*w),k(E*w)for H=1,#A do local I=A[H]-z[H]local J=(B[H]-I*D)/(2*y*C)local K=F
*(I-J)A[H]=K+J*G+z[H]B[H]=K*D+J*G*E end end return v.typedat.fromIntermediate(v.p)end end local v={}do v.__index=v
function v.new(w,x,y,z)return setmetatable({d=w,f=x,g=z:Orthonormalize(),p=y:Orthonormalize(),v=Vector3.zero},v)end
function v.setGoal(w,x)w.g=x:Orthonormalize()end function v.setDampingRatio(w,x)w.d=x end function v.setFrequency(w,x)w.
f=x end local function w(x,y)return x.X*y.X+x.Y*y.Y+x.Z*y.Z end local function x(y,z)local A,B,C=w(y.XVector,z.XVector),
w(y.YVector,z.YVector),w(y.ZVector,z.ZVector)local D=A+B+C return D>1+2*m(f)end local function y(z,A)local B,C,D=w(z.
XVector,A.XVector),w(z.YVector,A.YVector),w(z.ZVector,A.ZVector)local E=B+C+D-1 return q(p(o(0,1-E*E*0.25)),E*0.5)end
local function z(A,B)local C,D,E,F,G=m(B),l(B),A.X,A.Y,A.Z local H,I,J=E*F*(1-C),F*G*(1-C),G*E*(1-C)local K,L,M=Vector3.
new(E*E*(1-C)+C,H+G*D,J-F*D),Vector3.new(H-G*D,F*F*(1-C)+C,I+E*D),Vector3.new(J+F*D,I-E*D,G*G*(1-C)+C)return CFrame.
fromMatrix(Vector3.zero,K,L,M):Orthonormalize()end local function A(B,C)local D,E=CFrame.identity,B.Magnitude if E>1e-6
then D=z(B.Unit,E)end return D*C end local function B(C,D)local E,F=(C*D:Inverse()):ToAxisAngle(),y(C,D)return E.Unit*F
end function v.canSleep(C)local D,E=x(C.p,C.g),C.v.Magnitude<g return D and E end function v.step(C,D)local E,F,G,H,I=C.
d,C.f*(2*j),C.g,C.p,C.v local J,K,L,M=B(H,G),(k(-E*F*D))if E==1 then L=A((J*(1+F*D)+I*D)*K,G)M=(I*(1-D*F)-J*(D*F*F))*K
elseif E<1 then local N=p(1-E*E)local O,P=m(D*F*N),l(D*F*N)local Q,R=P/(F*N),P/N L=A((J*(O+R*E)+I*Q)*K,G)M=(I*(O-R*E)-J*
(R*F))*K else local N=p(E*E-1)local O,P=-F*(E+N),-F*(E-N)local Q=(I-J*O)/(2*F*N)local R=J-Q local S,T=R*k(O*D),Q*k(P*D)L
=A(S+T,G)M=S*O+T*P end C.p=L C.v=M return L end end local w,x={springType=u.new,toIntermediate=function(w)return{w.X,w.Y
,w.Z}end,fromIntermediate=function(w)return Vector3.new(w[1],w[2],w[3])end},{}do x.__index=x function x.new(y,z,A,B,C)
return setmetatable({rawGoal=B,_position=u.new(y,z,A.Position,B.Position,w),_rotation=v.new(y,z,A.Rotation,B.Rotation)},
x)end function x:setGoal(y)self.rawGoal=y self._position:setGoal(y.Position)self._rotation:setGoal(y.Rotation)end
function x:setDampingRatio(y)self._position.d=y self._rotation.d=y end function x:setFrequency(y)self._position.f=y self
._rotation.f=y end function x:canSleep()return self._position:canSleep()and self._rotation:canSleep()end function x:step
(y)local z,A=self._position:step(y),self._rotation:step(y)return A+z end end local y,z do local function A(B)return B<
0.0404482362771076 and B/12.92 or 0.87941546140213*(B+0.055)^2.4 end local function B(C)return C<3.1306684424999998e-3
and 12.92*C or 1.055*C^(0.4166666666666667)-0.055 end function y(C)local D,E,F=C.R,C.G,C.B D=A(D)E=A(E)F=A(F)local G,H,I
=0.9257063972951867*D-0.8333736323779866*E-0.09209820666085898*F,0.2125862307855956*D+0.7151703037034108*E+
0.0722004986433362*F,3.6590806972265884*D+11.442689580057424*E+4.114991502426484*F local J,K,L=H>0.008856451679035631
and 116*H^(0.3333333333333333)-16 or 903.296296296296*H if I>1e-14 then K=J*G/I L=J*(9*H/I-0.46832)else K=-0.19783*J L=-
0.46832*J end return{J,K,L}end function z(C)local D=C[1]if D<0.0197955 then return Color3.new(0,0,0)end local E,F,G=C[2]
/D+0.19783,C[3]/D+0.46832,(D+16)/116 G=G>0.20689655172413793 and G*G*G or 0.12841854934601665*G-0.01771290335807126
local H,I=G*E/F,G*((3-0.75*E)/F-5)local J,K,L=7.2914074*H-1.537208*G-0.4986286*I,-2.180094*H+1.8757561*G+0.0415175*I,
0.1253477*H-0.2040211*G+1.0569959*I if J<0 and J<K and J<L then J,K,L=0,K-J,L-J elseif K<0 and K<L then J,K,L=J-K,0,L-K
elseif L<0 then J,K,L=J-L,K-L,0 end return Color3.new(n(B(J),1),n(B(K),1),n(B(L),1))end end local A,B={boolean={
springType=u.new,toIntermediate=function(A)return{A and 1 or 0}end,fromIntermediate=function(A)return A[1]>=0.5 end},
number={springType=u.new,toIntermediate=function(A)return{A}end,fromIntermediate=function(A)return A[1]end},NumberRange=
{springType=u.new,toIntermediate=function(A)return{A.Min,A.Max}end,fromIntermediate=function(A)return NumberRange.new(A[
1],A[2])end},UDim={springType=u.new,toIntermediate=function(A)return{A.Scale,A.Offset}end,fromIntermediate=function(A)
return UDim.new(A[1],r(A[2]))end},UDim2={springType=u.new,toIntermediate=function(A)local B,C=A.X,A.Y return{B.Scale,B.
Offset,C.Scale,C.Offset}end,fromIntermediate=function(A)return UDim2.new(A[1],r(A[2]),A[3],r(A[4]))end},Vector2={
springType=u.new,toIntermediate=function(A)return{A.X,A.Y}end,fromIntermediate=function(A)return Vector2.new(A[1],A[2])
end},Vector3=w,Color3={springType=u.new,toIntermediate=y,fromIntermediate=z},ColorSequence={springType=u.new,
toIntermediate=function(A)local B=A.Keypoints local C,D=y(B[1].Value),y(B[#B].Value)return{C[1],C[2],C[3],D[1],D[2],D[3]
}end,fromIntermediate=function(A)return ColorSequence.new(z{A[1],A[2],A[3]},z{A[4],A[5],A[6]})end},CFrame={springType=x.
new,toIntermediate=error,fromIntermediate=error}},{Pivot={class='PVInstance',get=function(A)return A:GetPivot()end,set=
function(A,B)A:PivotTo(B)end},Scale={class='Model',get=function(A)return A:GetScale()end,set=function(A,B)local C,D=
1.4020000000000001e-45,16777216 B=math.clamp(B,C,D)A:ScaleTo(B)end}}local function C(D,E)local F=B[E]if F and D:IsA(F.
class)then return F.get(D)else return(D)[E]end end local function D(E,F,G)local H=B[F]if H and E:IsA(H.class)then H.set(
E,G)else(E)[F]=G end end local E,F,G={},{},{}local function H(I,J)for K,L in I do for M,N in L do if N:canSleep()then L[
M]=nil D(K,M,N.rawGoal)else D(K,M,N:step(J))end end if not next(L)then I[K]=nil local M=G[K]if M then G[K]=nil for N,O
in M do task.spawn(O)end end end end end i.PreSimulation:Connect(function(I)H(E,I)end)i.PostSimulation:Connect(function(
I)H(F,I)end)local function I(J,K,L,M)if not L:find(typeof(M))then error(string.format(
'bad argument #%s to %s (%s expected, got %s)',tostring(J),tostring(K),tostring(L),tostring(typeof(M))),3)end end local
J={}function J.target(K,L,M,N)if c then I(1,'spr.target','Instance',K)I(2,'spr.target','number',L)I(3,'spr.target',
'number',M)I(4,'spr.target','table',N)end if L~=L or L<0 then error(('expected damping ratio >= 0; got %.2f'):format(L),
2)end if M~=M or M<0 then error(('expected undamped frequency >= 0; got %.2f'):format(M),2)end local O if K:IsA'Camera'
then O=F else O=E end local P=O[K]if not P then P={}O[K]=P end for Q,R in N do local S=C(K,Q)if c and typeof(R)~=typeof(
S)then error(string.format('bad property %s to spr.target (%s expected, got %s)',tostring(Q),tostring(typeof(S)),
tostring(typeof(R))),2)end if M==math.huge then D(K,Q,R)P[Q]=nil continue end local T=P[Q]if not T then local U=A[
typeof(R)]if not U then error('unsupported type: '..typeof(R),2)end T=U.springType(L,M,S,R,U)P[Q]=T end T:setGoal(R)T:
setDampingRatio(L)T:setFrequency(M)end if not next(P)then O[K]=nil end end function J.stop(K,L)if c then I(1,'spr.stop',
'Instance',K)I(2,'spr.stop','string|nil',L)end if L then local M=E[K]or F[K]if M then M[L]=nil end else E[K]=nil F[K]=
nil end end function J.completed(K,L)if c then I(1,'spr.completed','Instance',K)I(2,'spr.completed','function',L)end
local M=G[K]if M then table.insert(M,L)else G[K]={L}end end return table.freeze(J)end function a.h()local c=a.cache.h if
not c then c={c=b()}a.cache.h=c end return c.c end end do local function b()return{DEFAULT={DAMPING_RATIO=1,FREQUENCY=7}
}end function a.i()local c=a.cache.i if not c then c={c=b()}a.cache.i=c end return c.c end end do local function b()
local c,d,e,f,g,h,i=a.f(),a.d(),a.a(),a.g(),a.e(),a.h(),a.i()local j,k,l=i.DEFAULT.DAMPING_RATIO,i.DEFAULT.FREQUENCY,{}l
.__index=l function l.new(m)local n=(setmetatable({view=f(m),_expanded=false,_lastSize=d.DEF_SIZE},l))n._drag=c.new(n.
view.container,n.view.header)g.new(n.view.minimize.MouseButton1Click,function()n:_minimize()end)g.new(n.view.expand.
MouseButton1Click,function()n:_expand()end)g.new(n.view.close.MouseButton1Click,function()n.view.illumina:Destroy()end)g
.new(n.view.illumina.AncestryChanged,function()if not n.view.illumina.Parent then g.clear()m.destroyed()end end)return n
end function l._minimize(m)m.view.illumina.Enabled=not m.view.illumina.Enabled end function l._expand(m,n)m._expanded=if
n~=nil then n else not m._expanded m._drag:setPermission(not m._expanded)local o,p,q=m._expanded and d.DEF_POSITION or m
._drag:getLastPosition(),m._expanded and d.MAX_SIZE or m._lastSize,m._expanded and d.MIN_CORNER or d.MAX_CORNER h.
target(m.view.container,j,k,{Position=o,Size=p})h.target(m.view.corner,j,k,{CornerRadius=q})end return l end function a.
j()local c=a.cache.j if not c then c={c=b()}a.cache.j=c end return c.c end end do local function b()return nil end
function a.k()local c=a.cache.k if not c then c={c=b()}a.cache.k=c end return c.c end end do local function b()return
nil end function a.l()local c=a.cache.l if not c then c={c=b()}a.cache.l=c end return c.c end end do local function b()
return nil end function a.m()local c=a.cache.m if not c then c={c=b()}a.cache.m=c end return c.c end end do
local function b()return{DEFAULT={BUTTON_COLOR=Color3.fromRGB(16,16,16)},HOVERED={BUTTON_COLOR=Color3.fromRGB(20,20,20)}
}end function a.n()local c=a.cache.n if not c then c={c=b()}a.cache.n=c end return c.c end end do local function b()a.k(
)return function(c,d)local e=Instance.new'TextButton'e.Name='Button'e.AutoButtonColor=false e.BackgroundColor3=Color3.
fromRGB(16,16,16)e.BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.Size=UDim2.new(1,0,0,113)e.Text=''e.
TextColor3=Color3.fromRGB(0,0,0)e.TextSize=14 local f=Instance.new'UICorner'f.Name='UICorner'f.CornerRadius=UDim.new(0,5
)f.Parent=e local g=Instance.new'Frame'g.Name='Content'g.BackgroundColor3=Color3.fromRGB(255,255,255)g.
BackgroundTransparency=1 g.BorderColor3=Color3.fromRGB(0,0,0)g.BorderSizePixel=0 g.Size=UDim2.new(1,0,0,20)local h=
Instance.new'UIListLayout'h.Name='UIListLayout'h.FillDirection=Enum.FillDirection.Horizontal h.Padding=UDim.new(0,10)h.
SortOrder=Enum.SortOrder.LayoutOrder h.VerticalAlignment=Enum.VerticalAlignment.Center h.Parent=g local i=Instance.new
'ImageLabel'i.Name='Icon'i.AnchorPoint=Vector2.new(0.5,0.5)i.BackgroundColor3=Color3.fromRGB(255,255,255)i.
BackgroundTransparency=1 i.BorderColor3=Color3.fromRGB(0,0,0)i.BorderSizePixel=0 i.Image='rbxassetid://118002645781070'i
.ImageColor3=Color3.fromRGB(207,207,207)i.LayoutOrder=1 i.Position=UDim2.fromScale(0.5,0.5)i.Size=UDim2.fromOffset(20,20
)i.Parent=g local j=Instance.new'TextLabel'j.Name='Title'j.BackgroundColor3=Color3.fromRGB(255,255,255)j.
BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0 j.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)j.Size=UDim2.new(1,-30,1,0)j.
Text=c.title j.TextColor3=Color3.fromRGB(207,207,207)j.TextSize=16 j.TextTruncate=Enum.TextTruncate.SplitWord j.
TextXAlignment=Enum.TextXAlignment.Left j.Parent=g g.Parent=e local k=Instance.new'UIListLayout'k.Name='UIListLayout'k.
HorizontalAlignment=Enum.HorizontalAlignment.Center k.Padding=UDim.new(0,15)k.SortOrder=Enum.SortOrder.LayoutOrder k.
Parent=e local l=Instance.new'UIPadding'l.Name='UIPadding'l.PaddingBottom=UDim.new(0,15)l.PaddingLeft=UDim.new(0,15)l.
PaddingRight=UDim.new(0,15)l.PaddingTop=UDim.new(0,15)l.Parent=e local m=Instance.new'Frame'm.Name='Divider'm.
BackgroundColor3=Color3.fromRGB(47,47,47)m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Size=UDim2.new(1,30,0
,1)m.Parent=e local n=Instance.new'UIStroke'n.Name='UIStroke'n.ApplyStrokeMode=Enum.ApplyStrokeMode.Border n.Color=
Color3.fromRGB(47,47,47)n.Parent=e local o=Instance.new'Frame'o.Name='Description'o.BackgroundColor3=Color3.fromRGB(255,
255,255)o.BackgroundTransparency=1 o.BorderColor3=Color3.fromRGB(0,0,0)o.BorderSizePixel=0 o.Size=UDim2.new(1,0,0,32)
local p=Instance.new'TextLabel'p.Name='Text'p.AnchorPoint=Vector2.new(0,0.5)p.BackgroundColor3=Color3.fromRGB(255,255,
255)p.BackgroundTransparency=1 p.BorderColor3=Color3.fromRGB(0,0,0)p.BorderSizePixel=0 p.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)p.Position=UDim2.fromScale(0,0.5
)p.Size=UDim2.fromScale(1,1)p.Text=c.description p.TextColor3=Color3.fromRGB(89,89,89)p.TextSize=16 p.TextWrapped=true p
.TextXAlignment=Enum.TextXAlignment.Left p.TextYAlignment=Enum.TextYAlignment.Top p.Parent=o o.Parent=e e.Parent=d
return{button=e,title=j,description={frame=o,text=p}}end end function a.o()local c=a.cache.o if not c then c={c=b()}a.
cache.o=c end return c.c end end do local function b()return{PADDING=15,GAP=15}end function a.p()local c=a.cache.p if
not c then c={c=b()}a.cache.p=c end return c.c end end do local function b()local c,d,e,f=game:GetService'TextService',a
.p(),16,Enum.Font.GothamMedium local function g(h,i,j)local k=Vector2.new(i,j)local l=c:GetTextSize(h,e,f,k)return UDim2
.fromOffset(l.X,l.Y)end local function h(i,j)if j=='X'then return i.X.Offset end return i.Y.Offset end local function i(
j,k,l,m)local n,o=l*2,0 for p,q in j:GetChildren()do if not q:IsA'GuiObject'then continue end n+=h(q.Size,k)o+=1 if o>1
then n+=m end end return n end local function j(k,l)local m=g(l.text.Text,l.frame.AbsoluteSize.X,math.huge)l.text.Size=m
l.frame.Size=UDim2.new(1,0,0,m.Y.Offset)local n=i(k,'Y',d.PADDING,d.GAP)k.Size=UDim2.new(1,0,0,n)end return{getTextSize=
g,getComponentSize=i,scaleComponent=j}end function a.q()local c=a.cache.q if not c then c={c=b()}a.cache.q=c end return
c.c end end do local function b()local c,d,e,f,g,h,i=a.n(),a.k(),a.o(),a.q(),a.e(),a.h(),a.i()local j,k,l=i.DEFAULT.
DAMPING_RATIO,i.DEFAULT.FREQUENCY,{}l.__index=l function l.new(m,n)local o=setmetatable({view=e(m,n)},l)g.new(o.view.
button.MouseButton1Click,function()if m.activated then m.activated()end end)g.new(o.view.button.MouseEnter,function()o:
_applyStyle(c.HOVERED)end)g.new(o.view.button.MouseLeave,function()o:_applyStyle(c.DEFAULT)end)g.new(o.view.button:
GetPropertyChangedSignal'AbsoluteSize',function()f.scaleComponent(o.view.button,o.view.description)end)f.scaleComponent(
o.view.button,o.view.description)return o end function l._applyStyle(m,n)h.target(m.view.button,j,k,{BackgroundColor3=n.
BUTTON_COLOR})end return l end function a.r()local c=a.cache.r if not c then c={c=b()}a.cache.r=c end return c.c end end
do local function b()return function(c,d)local e=Instance.new'TextLabel'e.Name='Label'e.BackgroundColor3=Color3.fromRGB(
255,255,255)e.BackgroundTransparency=1 e.BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)e.Size=UDim2.new(1,0,0,20)e.Text
=c e.TextColor3=Color3.fromRGB(207,207,207)e.TextSize=16 e.TextTruncate=Enum.TextTruncate.SplitWord e.TextXAlignment=
Enum.TextXAlignment.Left e.Parent=d return e end end function a.s()local c=a.cache.s if not c then c={c=b()}a.cache.s=c
end return c.c end end do local function b()return function(c)local d=Instance.new'ScrollingFrame'd.Name='Section'd.
Active=true d.AnchorPoint=Vector2.new(0.5,0.5)d.AutomaticCanvasSize=Enum.AutomaticSize.Y d.BackgroundColor3=Color3.
fromRGB(255,255,255)d.BackgroundTransparency=1 d.BorderColor3=Color3.fromRGB(0,0,0)d.BorderSizePixel=0 d.CanvasSize=
UDim2.fromScale(0,0.5)d.LayoutOrder=2 d.Position=UDim2.fromScale(0.5,0.5)d.ScrollBarImageColor3=Color3.fromRGB(0,0,0)d.
ScrollBarImageTransparency=1 d.ScrollBarThickness=0 d.ScrollingDirection=Enum.ScrollingDirection.Y d.Size=UDim2.
fromScale(1,1)d.Visible=false local e=Instance.new'UIListLayout'e.Name='UIListLayout'e.HorizontalAlignment=Enum.
HorizontalAlignment.Center e.Padding=UDim.new(0,10)e.SortOrder=Enum.SortOrder.LayoutOrder e.Parent=d local f=Instance.
new'UIPadding'f.Name='UIPadding'f.PaddingBottom=UDim.new(0,15)f.PaddingLeft=UDim.new(0,15)f.PaddingRight=UDim.new(0,15)f
.PaddingTop=UDim.new(0,15)f.Parent=d d.Parent=c return d end end function a.t()local c=a.cache.t if not c then c={c=b()}
a.cache.t=c end return c.c end end do local function b()local c=game:GetService'HttpService'local function d(e)if not
isfolder(e)then makefolder(e)end end local function e(f)if not isfile(f)then return{}end local g=readfile(f)local h,i=
pcall(function()return c:JSONDecode(g)end)if not h then return{}end return i end local function f(g,h)local i,j=pcall(
function()return c:JSONEncode(h)end)if i then writefile(g,j)end end return{ensureFolderExists=d,getContent=e,writeData=f
}end function a.u()local c=a.cache.u if not c then c={c=b()}a.cache.u=c end return c.c end end do local function b()
local c,d=a.u(),'illumina'local e,f,g=string.format('%s/products',tostring(d)),'json',{}g.__index=g function g.new(h)
local i=string.format('%s/%s.%s',tostring(e),tostring(h),tostring(f))c.ensureFolderExists(d)local j=setmetatable({_path=
i,_flags=c.getContent(i)},g)return j end function g.getFlag(h,i,j)local k=h._flags[i]if k~=nil and typeof(k)==j then
return k end return nil end function g.setFlag(h,i,j)h._flags[i]=j c.writeData(h._path,h._flags)end return g end
function a.v()local c=a.cache.v if not c then c={c=b()}a.cache.v=c end return c.c end end do local function b()a.l()
return function(c,d)local e=Instance.new'Frame'e.Name='Slider'e.BackgroundColor3=Color3.fromRGB(16,16,16)e.BorderColor3=
Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.Size=UDim2.new(1,0,0,113)local f=Instance.new'UIStroke'f.Name='UIStroke'f.
ApplyStrokeMode=Enum.ApplyStrokeMode.Border f.Color=Color3.fromRGB(47,47,47)f.Parent=e local g=Instance.new'UIPadding'g.
Name='UIPadding'g.PaddingBottom=UDim.new(0,15)g.PaddingLeft=UDim.new(0,15)g.PaddingRight=UDim.new(0,15)g.PaddingTop=UDim
.new(0,15)g.Parent=e local h=Instance.new'UIListLayout'h.Name='UIListLayout'h.HorizontalAlignment=Enum.
HorizontalAlignment.Center h.Padding=UDim.new(0,15)h.SortOrder=Enum.SortOrder.LayoutOrder h.Parent=e local i=Instance.
new'UICorner'i.Name='UICorner'i.CornerRadius=UDim.new(0,5)i.Parent=e local j=Instance.new'Frame'j.Name='Content'j.
BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(0,0,0)j.
BorderSizePixel=0 j.Size=UDim2.new(1,0,0,20)local k=Instance.new'UIListLayout'k.Name='UIListLayout'k.FillDirection=Enum.
FillDirection.Horizontal k.Padding=UDim.new(0,10)k.SortOrder=Enum.SortOrder.LayoutOrder k.VerticalAlignment=Enum.
VerticalAlignment.Center k.Parent=j local l=Instance.new'TextLabel'l.Name='Value'l.BackgroundColor3=Color3.fromRGB(255,
255,255)l.BackgroundTransparency=1 l.BorderColor3=Color3.fromRGB(0,0,0)l.BorderSizePixel=0 l.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)l.LayoutOrder=1 l.Size=UDim2.
new(0,19,1,0)l.Text='75'l.TextColor3=Color3.fromRGB(207,207,207)l.TextSize=16 l.TextXAlignment=Enum.TextXAlignment.Right
l.Parent=j local m=Instance.new'Frame'm.Name='Track'm.BackgroundColor3=Color3.fromRGB(47,47,47)m.BorderColor3=Color3.
fromRGB(0,0,0)m.BorderSizePixel=0 m.LayoutOrder=2 m.Size=UDim2.fromOffset(200,6)local n=Instance.new'UICorner'n.Name=
'UICorner'n.CornerRadius=UDim.new(1,0)n.Parent=m local o=Instance.new'Frame'o.Name='Fill'o.AnchorPoint=Vector2.new(0,0.5
)o.BackgroundColor3=Color3.fromRGB(211,211,211)o.BorderColor3=Color3.fromRGB(0,0,0)o.BorderSizePixel=0 o.Position=UDim2.
fromScale(0,0.5)o.Size=UDim2.fromScale(0.75,1)local p=Instance.new'UICorner'p.Name='UICorner'p.CornerRadius=UDim.new(1,0
)p.Parent=o local q=Instance.new'Frame'q.Name='Circle'q.AnchorPoint=Vector2.new(0.5,0.5)q.BackgroundColor3=Color3.
fromRGB(255,255,255)q.BorderColor3=Color3.fromRGB(0,0,0)q.BorderSizePixel=0 q.Position=UDim2.fromScale(1,0.5)q.Size=
UDim2.fromOffset(16,16)local r=Instance.new'UICorner'r.Name='UICorner'r.CornerRadius=UDim.new(1,0)r.Parent=q q.Parent=o
o.Parent=m local s=Instance.new'TextButton's.Name='Hitbox's.AnchorPoint=Vector2.new(0.5,0.5)s.AutoButtonColor=false s.
BackgroundColor3=Color3.fromRGB(255,255,255)s.BackgroundTransparency=1 s.BorderColor3=Color3.fromRGB(0,0,0)s.
BorderSizePixel=0 s.Position=UDim2.fromScale(0.5,0.5)s.Size=UDim2.new(1,0,1,20)s.Text=''s.TextColor3=Color3.fromRGB(0,0,
0)s.TextSize=14 s.Parent=m m.Parent=j local t=Instance.new'TextLabel't.Name='Title't.BackgroundColor3=Color3.fromRGB(255
,255,255)t.BackgroundTransparency=1 t.BorderColor3=Color3.fromRGB(0,0,0)t.BorderSizePixel=0 t.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)t.Size=UDim2.new(1,-239,1,0)t.
Text=c.title t.TextColor3=Color3.fromRGB(207,207,207)t.TextSize=16 t.TextTruncate=Enum.TextTruncate.SplitWord t.
TextXAlignment=Enum.TextXAlignment.Left t.Parent=j j.Parent=e local u=Instance.new'Frame'u.Name='Divider'u.
BackgroundColor3=Color3.fromRGB(47,47,47)u.BorderColor3=Color3.fromRGB(0,0,0)u.BorderSizePixel=0 u.Size=UDim2.new(1,30,0
,1)u.Parent=e local v=Instance.new'Frame'v.Name='Description'v.BackgroundColor3=Color3.fromRGB(255,255,255)v.
BackgroundTransparency=1 v.BorderColor3=Color3.fromRGB(0,0,0)v.BorderSizePixel=0 v.Size=UDim2.new(1,0,0,32)local w=
Instance.new'TextLabel'w.Name='Text'w.AnchorPoint=Vector2.new(0,0.5)w.BackgroundColor3=Color3.fromRGB(255,255,255)w.
BackgroundTransparency=1 w.BorderColor3=Color3.fromRGB(0,0,0)w.BorderSizePixel=0 w.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)w.Position=UDim2.fromScale(0,0.5
)w.Size=UDim2.fromScale(1,1)w.Text=c.description w.TextColor3=Color3.fromRGB(89,89,89)w.TextSize=16 w.TextWrapped=true w
.TextXAlignment=Enum.TextXAlignment.Left w.TextYAlignment=Enum.TextYAlignment.Top w.Parent=v v.Parent=e e.Parent=d
return{slider=e,title=t,value=l,track={frame=m,fill=o,circle=q,hitbox=s},description={frame=v,text=w}}end end function a
.w()local c=a.cache.w if not c then c={c=b()}a.cache.w=c end return c.c end end do local function b()local c,d,e,f,g,h,i
,j=game:GetService'UserInputService',a.v(),a.l(),a.w(),a.q(),a.e(),a.c(),{}j.__index=j function j.new(k,l,m)local n=(
setmetatable({props=k,flags=l,view=f(k,m),_value=0,_dragging=false,_startInput=nil,_inputChanged=nil},j))h.new(n.view.
track.hitbox.InputBegan,function(o)n:_onInputBegan(o)end)h.new(n.view.track.hitbox.InputEnded,function(o)n:
_onInputEnded(o)end)h.new(n.view.slider:GetPropertyChangedSignal'AbsoluteSize',function()g.scaleComponent(n.view.slider,
n.view.description)end)g.scaleComponent(n.view.slider,n.view.description)local o=l:getFlag(k.flag,'number')local p=if o
~=nil then o else k.value n:changeValue(p,false)return n end function j.changeValue(k,l,m)local n,o=math.clamp(l,k.props
.min,k.props.max),k.props.max-k.props.min local p=n-k.props.min local q=p/o if m and k._value==n then return end k.
_value=n k:_applyTrack(q)k.view.value.Text=tostring(n)k.flags:setFlag(k.props.flag,n)if k.props.changed then k.props.
changed(n)end end function j._resetState(k)k._dragging=false k._startInput=nil if k._inputChanged then k._inputChanged()
end end function j._onInputBegan(k,l)if l.UserInputType~=i.MOUSE_INPUT then return end k._dragging=true k._startInput=l
k._inputChanged=h.new(c.InputChanged,function(m)k:_onInputChanged(m)end)end function j._onInputChanged(k,l)if not k.
_dragging or not k._startInput then return end if l.UserInputState==i.END_INPUT or k._startInput.UserInputState==i.
END_INPUT then k:_resetState()return end if l.UserInputType==i.MOVE_INPUT then k:_updateFromInput(l)end end function j.
_onInputEnded(k,l)if l.UserInputType==i.MOUSE_INPUT then k:_resetState()end end function j._updateFromInput(k,l)local m=
k.view.track.frame local n=l.Position.X-m.AbsolutePosition.X local o,p=math.clamp(n/m.AbsoluteSize.X,0,1),k.props.max-k.
props.min local q=k.props.min+o*p local r=math.round(q*k.props.division)/k.props.division k:changeValue(r,true)end
function j._applyTrack(k,l)local m=k.view.track.circle.AbsoluteSize.X local n=m/2-m*l k.view.track.fill.Size=UDim2.new(l
,n,1,0)end return j end function a.x()local c=a.cache.x if not c then c={c=b()}a.cache.x=c end return c.c end end do
local function b()return{DISABLED={THUMB_COLOR=Color3.fromRGB(47,47,47),CIRCLE_COLOR=Color3.fromRGB(126,126,126),
CIRCLE_POSITION=UDim2.fromScale(0,0.5),CIRCLE_ANCHOR_POINT=Vector2.new(0,0.5)},ENABLED={THUMB_COLOR=Color3.fromRGB(255,
255,255),CIRCLE_COLOR=Color3.fromRGB(34,34,34),CIRCLE_POSITION=UDim2.fromScale(1,0.5),CIRCLE_ANCHOR_POINT=Vector2.new(1,
0.5)}}end function a.y()local c=a.cache.y if not c then c={c=b()}a.cache.y=c end return c.c end end do local function b(
)a.m()return function(c,d)local e=Instance.new'TextButton'e.Name='Switch'e.AutoButtonColor=false e.BackgroundColor3=
Color3.fromRGB(16,16,16)e.BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.Size=UDim2.new(1,0,0,113)e.Text=''e.
TextColor3=Color3.fromRGB(0,0,0)e.TextSize=14 local f=Instance.new'UICorner'f.Name='UICorner'f.CornerRadius=UDim.new(0,5
)f.Parent=e local g=Instance.new'Frame'g.Name='Content'g.BackgroundColor3=Color3.fromRGB(255,255,255)g.
BackgroundTransparency=1 g.BorderColor3=Color3.fromRGB(0,0,0)g.BorderSizePixel=0 g.Size=UDim2.new(1,0,0,20)local h=
Instance.new'UIListLayout'h.Name='UIListLayout'h.FillDirection=Enum.FillDirection.Horizontal h.Padding=UDim.new(0,10)h.
SortOrder=Enum.SortOrder.LayoutOrder h.VerticalAlignment=Enum.VerticalAlignment.Center h.Parent=g local i=Instance.new
'TextLabel'i.Name='Title'i.BackgroundColor3=Color3.fromRGB(255,255,255)i.BackgroundTransparency=1 i.BorderColor3=Color3.
fromRGB(0,0,0)i.BorderSizePixel=0 i.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,
Enum.FontStyle.Normal)i.Size=UDim2.new(1,-50,1,0)i.Text=c.title i.TextColor3=Color3.fromRGB(207,207,207)i.TextSize=16 i.
TextTruncate=Enum.TextTruncate.SplitWord i.TextXAlignment=Enum.TextXAlignment.Left i.Parent=g local j=Instance.new
'Frame'j.Name='Thumb'j.BackgroundColor3=Color3.fromRGB(47,47,47)j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0
j.Size=UDim2.fromOffset(40,20)local k=Instance.new'UICorner'k.Name='UICorner'k.CornerRadius=UDim.new(1,0)k.Parent=j
local l=Instance.new'Frame'l.Name='Circle'l.AnchorPoint=Vector2.new(0,0.5)l.BackgroundColor3=Color3.fromRGB(126,126,126)
l.BorderColor3=Color3.fromRGB(0,0,0)l.BorderSizePixel=0 l.Position=UDim2.fromScale(0,0.5)l.Size=UDim2.fromOffset(16,16)
local m=Instance.new'UICorner'm.Name='UICorner'm.CornerRadius=UDim.new(1,0)m.Parent=l l.Parent=j local n=Instance.new
'UIPadding'n.Name='UIPadding'n.PaddingBottom=UDim.new(0,2)n.PaddingLeft=UDim.new(0,2)n.PaddingRight=UDim.new(0,2)n.
PaddingTop=UDim.new(0,2)n.Parent=j j.Parent=g g.Parent=e local o=Instance.new'UIListLayout'o.Name='UIListLayout'o.
HorizontalAlignment=Enum.HorizontalAlignment.Center o.Padding=UDim.new(0,15)o.SortOrder=Enum.SortOrder.LayoutOrder o.
Parent=e local p=Instance.new'UIPadding'p.Name='UIPadding'p.PaddingBottom=UDim.new(0,15)p.PaddingLeft=UDim.new(0,15)p.
PaddingRight=UDim.new(0,15)p.PaddingTop=UDim.new(0,15)p.Parent=e local q=Instance.new'UIStroke'q.Name='UIStroke'q.
ApplyStrokeMode=Enum.ApplyStrokeMode.Border q.Color=Color3.fromRGB(47,47,47)q.Parent=e local r=Instance.new'Frame'r.Name
='Divider'r.BackgroundColor3=Color3.fromRGB(47,47,47)r.BorderColor3=Color3.fromRGB(0,0,0)r.BorderSizePixel=0 r.Size=
UDim2.new(1,30,0,1)r.Parent=e local s=Instance.new'Frame's.Name='Description's.BackgroundColor3=Color3.fromRGB(255,255,
255)s.BackgroundTransparency=1 s.BorderColor3=Color3.fromRGB(0,0,0)s.BorderSizePixel=0 s.Size=UDim2.new(1,0,0,32)local t
=Instance.new'TextLabel't.Name='Text't.AnchorPoint=Vector2.new(0,0.5)t.BackgroundColor3=Color3.fromRGB(255,255,255)t.
BackgroundTransparency=1 t.BorderColor3=Color3.fromRGB(0,0,0)t.BorderSizePixel=0 t.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)t.Position=UDim2.fromScale(0,0.5
)t.Size=UDim2.fromScale(1,1)t.Text=c.description t.TextColor3=Color3.fromRGB(89,89,89)t.TextSize=16 t.TextWrapped=true t
.TextXAlignment=Enum.TextXAlignment.Left t.TextYAlignment=Enum.TextYAlignment.Top t.Parent=s s.Parent=e e.Parent=d
return{switch=e,title=i,thumb={frame=j,circle=l},description={frame=s,text=t}}end end function a.z()local c=a.cache.z if
not c then c={c=b()}a.cache.z=c end return c.c end end do local function b()local c,d,e,f,g,h,i,j=a.v(),a.y(),a.m(),a.z(
),a.q(),a.e(),a.h(),a.i()local k,l,m=j.DEFAULT.DAMPING_RATIO,j.DEFAULT.FREQUENCY,{}m.__index=m function m.new(n,o,p)
local q=setmetatable({props=n,flags=o,view=f(n,p),_enabled=false},m)h.new(q.view.switch.MouseButton1Click,function()q:
changeState(not q._enabled)end)h.new(q.view.switch:GetPropertyChangedSignal'AbsoluteSize',function()g.scaleComponent(q.
view.switch,q.view.description)end)g.scaleComponent(q.view.switch,q.view.description)local r=o:getFlag(n.flag,'boolean')
local s=if r~=nil then r else n.enabled if s then q:changeState(s)end return q end function m.changeState(n,o)n._enabled
=o n:_applyStyle(o and d.ENABLED or d.DISABLED)n.flags:setFlag(n.props.flag,o)if n.props.changed then n.props.changed(o)
end end function m._applyStyle(n,o)i.target(n.view.thumb.frame,k,l,{BackgroundColor3=o.THUMB_COLOR})i.target(n.view.
thumb.circle,k,l,{AnchorPoint=o.CIRCLE_ANCHOR_POINT,BackgroundColor3=o.CIRCLE_COLOR,Position=o.CIRCLE_POSITION})end
return m end function a.A()local c=a.cache.A if not c then c={c=b()}a.cache.A=c end return c.c end end do local function
b()return{DEFAULT={TAB_TRANSPARENCY=1,STROKE_TRANSPARENCY=1,ICON_COLOR=Color3.fromRGB(89,89,89),TEXT_COLOR=Color3.
fromRGB(89,89,89)},HOVERED={TAB_TRANSPARENCY=1,STROKE_TRANSPARENCY=1,ICON_COLOR=Color3.fromRGB(157,157,157),TEXT_COLOR=
Color3.fromRGB(157,157,157)},SELECTED={TAB_TRANSPARENCY=0,STROKE_TRANSPARENCY=0,ICON_COLOR=Color3.fromRGB(207,207,207),
TEXT_COLOR=Color3.fromRGB(207,207,207)}}end function a.B()local c=a.cache.B if not c then c={c=b()}a.cache.B=c end
return c.c end end do local function b()local c,d=a.b(),'rbxassetid://73851699179305'return function(e,f)local g=
Instance.new'TextButton'g.Name='Tab'g.AutoButtonColor=false g.BackgroundColor3=Color3.fromRGB(16,16,16)g.
BackgroundTransparency=1 g.BorderColor3=Color3.fromRGB(0,0,0)g.BorderSizePixel=0 g.Size=UDim2.new(1,0,0,50)g.Text=''g.
TextColor3=Color3.fromRGB(0,0,0)g.TextSize=14 local h=Instance.new'UICorner'h.Name='UICorner'h.CornerRadius=UDim.new(0,5
)h.Parent=g local i=Instance.new'UIStroke'i.Name='UIStroke'i.ApplyStrokeMode=Enum.ApplyStrokeMode.Border i.Color=Color3.
fromRGB(47,47,47)i.Transparency=1 i.Parent=g local j=Instance.new'TextLabel'j.Name='Title'j.BackgroundColor3=Color3.
fromRGB(255,255,255)j.BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0 j.FontFace=Font.
new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)j.LayoutOrder=1 j.Size=UDim2
.new(1,-30,1,0)j.Text=e.title j.TextColor3=Color3.fromRGB(89,89,89)j.TextSize=16 j.TextTruncate=Enum.TextTruncate.
SplitWord j.TextXAlignment=Enum.TextXAlignment.Left j.Parent=g local k=Instance.new'UIPadding'k.Name='UIPadding'k.
PaddingBottom=UDim.new(0,15)k.PaddingLeft=UDim.new(0,15)k.PaddingRight=UDim.new(0,15)k.PaddingTop=UDim.new(0,15)k.Parent
=g local l=Instance.new'UIListLayout'l.Name='UIListLayout'l.FillDirection=Enum.FillDirection.Horizontal l.Padding=UDim.
new(0,10)l.SortOrder=Enum.SortOrder.LayoutOrder l.VerticalAlignment=Enum.VerticalAlignment.Center l.Parent=g local m=
Instance.new'ImageLabel'm.Name='Icon'm.AnchorPoint=Vector2.new(0.5,0.5)m.BackgroundColor3=Color3.fromRGB(255,255,255)m.
BackgroundTransparency=1 m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Image=e.icon or d m.ImageColor3=
Color3.fromRGB(89,89,89)m.Position=UDim2.fromScale(0.5,0.5)m.Size=UDim2.fromOffset(20,20)m.Parent=g g.Parent=f return{
tab=g,stroke=i,title=j,icon=m}end end function a.C()local c=a.cache.C if not c then c={c=b()}a.cache.C=c end return c.c
end end do local function b()local c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=a.k(),a.a(),a.l(),a.m(),a.b(),a.r(),a.s(),a.t(),a.x()
,a.A(),a.v(),a.B(),a.C(),a.e(),a.h(),a.i()local s,t,u=r.DEFAULT.DAMPING_RATIO,r.DEFAULT.FREQUENCY,{}u.__index=u function
u.new(v,w,x,y)local z=setmetatable({flags=w,view=o(v,x.tabs),_tabs=y,_selected=false,_section=j(x.sections)},u)p.new(z.
view.tab.MouseButton1Click,function()z:select()end)p.new(z.view.tab.MouseEnter,function()if not z._selected then z:
_applyStyle(n.HOVERED)end end)p.new(z.view.tab.MouseLeave,function()if not z._selected then z:_applyStyle(n.DEFAULT)end
end)return z end function u.select(v)for w,x in v._tabs do local y=x.view==v.view local z=y and n.SELECTED or n.DEFAULT
x:_applyStyle(z)x._selected=y x._section.Visible=y end end function u.createLabel(v,w)return i(w,v._section)end function
u.createButton(v,w)return h.new(w,v._section)end function u.createSwitch(v,w)return l.new(w,v.flags,v._section)end
function u.createSlider(v,w)return k.new(w,v.flags,v._section)end function u._applyStyle(v,w)q.target(v.view.tab,s,t,{
BackgroundTransparency=w.TAB_TRANSPARENCY})q.target(v.view.stroke,s,t,{Transparency=w.STROKE_TRANSPARENCY})q.target(v.
view.icon,s,t,{ImageColor3=w.ICON_COLOR})q.target(v.view.title,s,t,{TextColor3=w.TEXT_COLOR})end return u end function a
.D()local c=a.cache.D if not c then c={c=b()}a.cache.D=c end return c.c end end end local b,c,d,e,f,g=a.a(),a.b(),a.j(),
a.D(),a.v(),{}g.__index=g function g.new(h)local i=setmetatable({flags=f.new(h.product),root=d.new(h),tabs={}},g)return
i end function g.createTab(h,i)local j=e.new(i,h.flags,h.root.view,h.tabs)table.insert(h.tabs,j)if#h.tabs==1 then j:
select()end return j end return g