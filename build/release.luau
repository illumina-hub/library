local a={cache={}}do do local function b()return nil end function a.a()local c=a.cache.a if not c then c={c=b()}a.cache.
a=c end return c.c end end do local function b()return nil end function a.b()local c=a.cache.b if not c then c={c=b()}a.
cache.b=c end return c.c end end do local function b()return{DEF_POSITION=UDim2.fromScale(0.5,0.5),DEF_SIZE=UDim2.
fromOffset(750,500),MIN_SIZE=UDim2.fromOffset(300,255),MAX_SIZE=UDim2.fromScale(1,1),MIN_CORNER=UDim.new(0,0),MAX_CORNER
=UDim.new(0,10)}end function a.c()local c=a.cache.c if not c then c={c=b()}a.cache.c=c end return c.c end end do
local function b()local c,d,e=game:GetService'Players',a.c(),a.a()local f=(c.LocalPlayer)local g=(f:
FindFirstChildOfClass'PlayerGui')return function(h)local i=Instance.new'ScreenGui'i.Name='Illumina'i.DisplayOrder=6 i.
IgnoreGuiInset=true i.ResetOnSpawn=false i.ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets local j=Instance.new'Frame'j.
Name='Container'j.AnchorPoint=Vector2.new(0.5,0.5)j.BackgroundColor3=Color3.fromRGB(10,10,10)j.BorderColor3=Color3.
fromRGB(0,0,0)j.BorderSizePixel=0 j.Position=d.DEF_POSITION j.Size=d.DEF_SIZE local k=Instance.new'UIStroke'k.Name=
'UIStroke'k.ApplyStrokeMode=Enum.ApplyStrokeMode.Border k.Color=Color3.fromRGB(47,47,47)k.Parent=j local l=Instance.new
'UICorner'l.Name='UICorner'l.CornerRadius=UDim.new(0,10)l.Parent=j local m=Instance.new'UIListLayout'm.Name=
'UIListLayout'm.HorizontalAlignment=Enum.HorizontalAlignment.Center m.SortOrder=Enum.SortOrder.LayoutOrder m.Parent=j
local n=Instance.new'Frame'n.Name='Header'n.BackgroundColor3=Color3.fromRGB(255,255,255)n.BackgroundTransparency=1 n.
BorderColor3=Color3.fromRGB(0,0,0)n.BorderSizePixel=0 n.Size=UDim2.new(1,0,0,50)local o=Instance.new'UIListLayout'o.Name
='UIListLayout'o.FillDirection=Enum.FillDirection.Horizontal o.SortOrder=Enum.SortOrder.LayoutOrder o.VerticalAlignment=
Enum.VerticalAlignment.Center o.Parent=n local p=Instance.new'UIPadding'p.Name='UIPadding'p.PaddingBottom=UDim.new(0,15)
p.PaddingLeft=UDim.new(0,15)p.PaddingRight=UDim.new(0,15)p.PaddingTop=UDim.new(0,15)p.Parent=n local q=Instance.new
'TextLabel'q.Name='Title'q.BackgroundColor3=Color3.fromRGB(255,255,255)q.BackgroundTransparency=1 q.BorderColor3=Color3.
fromRGB(0,0,0)q.BorderSizePixel=0 q.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,
Enum.FontStyle.Normal)q.Size=UDim2.new(1,-110,1,0)q.Text='Illumina'q.TextColor3=Color3.fromRGB(207,207,207)q.TextSize=16
q.TextXAlignment=Enum.TextXAlignment.Left q.Parent=n local r=Instance.new'TextButton'r.Name='Close'r.AutoButtonColor=
false r.BackgroundColor3=Color3.fromRGB(255,255,255)r.BackgroundTransparency=1 r.BorderColor3=Color3.fromRGB(0,0,0)r.
BorderSizePixel=0 r.InputSink=Enum.InputSink.None r.LayoutOrder=3 r.Size=UDim2.fromOffset(40,40)r.Text=''r.TextColor3=
Color3.fromRGB(0,0,0)r.TextSize=14 local s=Instance.new'ImageLabel's.Name='Icon's.AnchorPoint=Vector2.new(0.5,0.5)s.
BackgroundColor3=Color3.fromRGB(255,255,255)s.BackgroundTransparency=1 s.BorderColor3=Color3.fromRGB(0,0,0)s.
BorderSizePixel=0 s.Image='rbxassetid://74451597845240's.ImageColor3=Color3.fromRGB(207,207,207)s.Position=UDim2.
fromScale(0.5,0.5)s.Size=UDim2.fromOffset(20,20)s.Parent=r r.Parent=n local t=Instance.new'TextButton't.Name='Expand't.
AutoButtonColor=false t.BackgroundColor3=Color3.fromRGB(255,255,255)t.BackgroundTransparency=1 t.BorderColor3=Color3.
fromRGB(0,0,0)t.BorderSizePixel=0 t.InputSink=Enum.InputSink.None t.LayoutOrder=2 t.Size=UDim2.fromOffset(40,40)t.Text=
''t.TextColor3=Color3.fromRGB(0,0,0)t.TextSize=14 local u=Instance.new'ImageLabel'u.Name='Icon'u.AnchorPoint=Vector2.
new(0.5,0.5)u.BackgroundColor3=Color3.fromRGB(255,255,255)u.BackgroundTransparency=1 u.BorderColor3=Color3.fromRGB(0,0,0
)u.BorderSizePixel=0 u.Image='rbxassetid://92682004738840'u.ImageColor3=Color3.fromRGB(207,207,207)u.Position=UDim2.
fromScale(0.5,0.5)u.Size=UDim2.fromOffset(20,20)u.Parent=t t.Parent=n local v=Instance.new'TextButton'v.Name='Minimize'v
.AutoButtonColor=false v.BackgroundColor3=Color3.fromRGB(255,255,255)v.BackgroundTransparency=1 v.BorderColor3=Color3.
fromRGB(0,0,0)v.BorderSizePixel=0 v.InputSink=Enum.InputSink.None v.LayoutOrder=1 v.Size=UDim2.fromOffset(40,40)v.Text=
''v.TextColor3=Color3.fromRGB(0,0,0)v.TextSize=14 local w=Instance.new'ImageLabel'w.Name='Icon'w.AnchorPoint=Vector2.
new(0.5,0.5)w.BackgroundColor3=Color3.fromRGB(255,255,255)w.BackgroundTransparency=1 w.BorderColor3=Color3.fromRGB(0,0,0
)w.BorderSizePixel=0 w.Image='rbxassetid://83770212086491'w.ImageColor3=Color3.fromRGB(207,207,207)w.Position=UDim2.
fromScale(0.5,0.5)w.Size=UDim2.fromOffset(20,20)w.Parent=v v.Parent=n n.Parent=j local x=Instance.new'Frame'x.Name=
'Divider'x.BackgroundColor3=Color3.fromRGB(47,47,47)x.BorderColor3=Color3.fromRGB(0,0,0)x.BorderSizePixel=0 x.
LayoutOrder=1 x.Size=UDim2.new(1,0,0,1)x.Parent=j local y=Instance.new'Frame'y.Name='Group'y.BackgroundColor3=Color3.
fromRGB(255,255,255)y.BackgroundTransparency=1 y.BorderColor3=Color3.fromRGB(0,0,0)y.BorderSizePixel=0 y.LayoutOrder=2 y
.Size=UDim2.new(1,0,1,-51)local z=Instance.new'UIListLayout'z.Name='UIListLayout'z.FillDirection=Enum.FillDirection.
Horizontal z.SortOrder=Enum.SortOrder.LayoutOrder z.VerticalAlignment=Enum.VerticalAlignment.Center z.Parent=y local A=
Instance.new'ScrollingFrame'A.Name='Tabs'A.Active=true A.AutomaticCanvasSize=Enum.AutomaticSize.Y A.BackgroundColor3=
Color3.fromRGB(255,255,255)A.BackgroundTransparency=1 A.BorderColor3=Color3.fromRGB(0,0,0)A.BorderSizePixel=0 A.
CanvasSize=UDim2.fromScale(0,0.5)A.ScrollBarImageColor3=Color3.fromRGB(0,0,0)A.ScrollBarImageTransparency=1 A.
ScrollBarThickness=0 A.ScrollingDirection=Enum.ScrollingDirection.Y A.Size=UDim2.new(0,200,1,0)local B=Instance.new
'UIListLayout'B.Name='UIListLayout'B.HorizontalAlignment=Enum.HorizontalAlignment.Center B.Padding=UDim.new(0,10)B.
SortOrder=Enum.SortOrder.LayoutOrder B.Parent=A local C=Instance.new'UIPadding'C.Name='UIPadding'C.PaddingBottom=UDim.
new(0,15)C.PaddingLeft=UDim.new(0,15)C.PaddingRight=UDim.new(0,15)C.PaddingTop=UDim.new(0,15)C.Parent=A A.Parent=y local
D=Instance.new'Frame'D.Name='Divider'D.BackgroundColor3=Color3.fromRGB(47,47,47)D.BorderColor3=Color3.fromRGB(0,0,0)D.
BorderSizePixel=0 D.LayoutOrder=1 D.Size=UDim2.new(0,1,1,0)D.Parent=y local E=Instance.new'Frame'E.Name='Sections'E.
BackgroundColor3=Color3.fromRGB(255,255,255)E.BackgroundTransparency=1 E.BorderColor3=Color3.fromRGB(0,0,0)E.
BorderSizePixel=0 E.LayoutOrder=2 E.Size=UDim2.new(1,-201,1,0)E.Parent=y y.Parent=j j.Parent=i i.Parent=g return{
illumina=i,container=j,corner=l,header=n,minimize=v,expand=t,close=r,tabs=A,sections=E}end end function a.d()local c=a.
cache.d if not c then c={c=b()}a.cache.d=c end return c.c end end do local function b()local c={}local function d()local
e local function f()if not e then return end local g=table.find(c,e)if g then table.remove(c,g)end e:Disconnect()e=nil
end local function g(h,i)if e then return nil end local j=h:Connect(i)e=j table.insert(c,j)return f end return{connect=g
}end local function e()for f,g in c do g:Disconnect()end table.clear(c)end return{new=d,clear=e}end function a.e()local
c=a.cache.e if not c then c={c=b()}a.cache.e=c end return c.c end end do local function b()local c,d,e,f,g,h,i,j,k,l,m,n
,o,p,q,r=true,6.781684027777778E-8,1E-4,math.rad(0.01),math.rad(0.1),1e-5,game:GetService'RunService',math.pi,math.exp,
math.sin,math.cos,math.min,math.max,math.sqrt,math.atan2,math.round local function s(t)local u=0 for v,w in t do u+=w^2
end return u end local function t(u,v)local w=0 for x,y in u do w+=(v[x]-y)^2 end return w end local u={}do u.__index=u
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
local M=G[K]if M then table.insert(M,L)else G[K]={L}end end return table.freeze(J)end function a.f()local c=a.cache.f if
not c then c={c=b()}a.cache.f=c end return c.c end end do local function b()local c={DAMPING_RATIO=1,FREQUENCY=7}return{
ROOT=c,TAB=c}end function a.g()local c=a.cache.g if not c then c={c=b()}a.cache.g=c end return c.c end end do
local function b()local c,d,e,f,g,h=a.c(),a.a(),a.d(),a.e(),a.f(),a.g()local i,j,k=h.ROOT.DAMPING_RATIO,h.ROOT.FREQUENCY
,{}k.__index=k function k.new(l)local m={view=e(l),_expanded=false,_lastSize=c.DEF_SIZE}f.new().connect(m.view.minimize.
MouseButton1Click,function()m:_minimize()end)f.new().connect(m.view.expand.MouseButton1Click,function()m:_expand()end)f.
new().connect(m.view.close.MouseButton1Click,function()m:_destroy()end)f.new().connect(m.view.illumina.AncestryChanged,
function()if not m.view.illumina.Parent then f.clear()l.destroyed()end end)return setmetatable(m,k)end function k.
_minimize(l)l.view.illumina.Enabled=not l.view.illumina.Enabled end function k._expand(l,m)l._expanded=if m~=nil then m
else not l._expanded local n,o,p=l._expanded and c.DEF_POSITION or c.DEF_POSITION,l._expanded and c.MAX_SIZE or l.
_lastSize,l._expanded and c.MIN_CORNER or c.MAX_CORNER g.target(l.view.container,i,j,{Position=n,Size=o})g.target(l.view
.corner,i,j,{CornerRadius=p})end function k._destroy(l)l.view.illumina:Destroy()end return k end function a.h()local c=a
.cache.h if not c then c={c=b()}a.cache.h=c end return c.c end end do local function b()return nil end function a.i()
local c=a.cache.i if not c then c={c=b()}a.cache.i=c end return c.c end end do local function b()return nil end function
a.j()local c=a.cache.j if not c then c={c=b()}a.cache.j=c end return c.c end end do local function b()return{DEFAULT={
BUTTON_COLOR=Color3.fromRGB(16,16,16)},HOVERED={BUTTON_COLOR=Color3.fromRGB(20,20,20)}}end function a.k()local c=a.cache
.k if not c then c={c=b()}a.cache.k=c end return c.c end end do local function b()a.i()return function(c,d)local e=
Instance.new'TextButton'e.Name='Button'e.AutoButtonColor=false e.BackgroundColor3=Color3.fromRGB(16,16,16)e.BorderColor3
=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.Size=UDim2.new(1,0,0,113)e.Text=''e.TextColor3=Color3.fromRGB(0,0,0)e.
TextSize=14 local f=Instance.new'UICorner'f.Name='UICorner'f.CornerRadius=UDim.new(0,5)f.Parent=e local g=Instance.new
'Frame'g.Name='Content'g.BackgroundColor3=Color3.fromRGB(255,255,255)g.BackgroundTransparency=1 g.BorderColor3=Color3.
fromRGB(0,0,0)g.BorderSizePixel=0 g.Size=UDim2.new(1,0,0,20)local h=Instance.new'UIListLayout'h.Name='UIListLayout'h.
FillDirection=Enum.FillDirection.Horizontal h.Padding=UDim.new(0,10)h.SortOrder=Enum.SortOrder.LayoutOrder h.
VerticalAlignment=Enum.VerticalAlignment.Center h.Parent=g local i=Instance.new'ImageLabel'i.Name='Icon'i.AnchorPoint=
Vector2.new(0.5,0.5)i.BackgroundColor3=Color3.fromRGB(255,255,255)i.BackgroundTransparency=1 i.BorderColor3=Color3.
fromRGB(0,0,0)i.BorderSizePixel=0 i.Image='rbxassetid://118002645781070'i.ImageColor3=Color3.fromRGB(207,207,207)i.
LayoutOrder=1 i.Position=UDim2.fromScale(0.5,0.5)i.Size=UDim2.fromOffset(20,20)i.Parent=g local j=Instance.new
'TextLabel'j.Name='Title'j.BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1 j.BorderColor3=Color3.
fromRGB(0,0,0)j.BorderSizePixel=0 j.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,
Enum.FontStyle.Normal)j.Size=UDim2.new(1,-30,1,0)j.Text=c.title j.TextColor3=Color3.fromRGB(207,207,207)j.TextSize=16 j.
TextTruncate=Enum.TextTruncate.SplitWord j.TextXAlignment=Enum.TextXAlignment.Left j.Parent=g g.Parent=e local k=
Instance.new'UIListLayout'k.Name='UIListLayout'k.HorizontalAlignment=Enum.HorizontalAlignment.Center k.Padding=UDim.new(
0,15)k.SortOrder=Enum.SortOrder.LayoutOrder k.Parent=e local l=Instance.new'UIPadding'l.Name='UIPadding'l.PaddingBottom=
UDim.new(0,15)l.PaddingLeft=UDim.new(0,15)l.PaddingRight=UDim.new(0,15)l.PaddingTop=UDim.new(0,15)l.Parent=e local m=
Instance.new'Frame'm.Name='Divider'm.BackgroundColor3=Color3.fromRGB(47,47,47)m.BorderColor3=Color3.fromRGB(0,0,0)m.
BorderSizePixel=0 m.Size=UDim2.new(1,30,0,1)m.Parent=e local n=Instance.new'UIStroke'n.Name='UIStroke'n.ApplyStrokeMode=
Enum.ApplyStrokeMode.Border n.Color=Color3.fromRGB(47,47,47)n.Parent=e local o=Instance.new'Frame'o.Name='Description'o.
BackgroundColor3=Color3.fromRGB(255,255,255)o.BackgroundTransparency=1 o.BorderColor3=Color3.fromRGB(0,0,0)o.
BorderSizePixel=0 o.Size=UDim2.new(1,0,0,32)local p=Instance.new'TextLabel'p.Name='Text'p.AnchorPoint=Vector2.new(0,0.5)
p.BackgroundColor3=Color3.fromRGB(255,255,255)p.BackgroundTransparency=1 p.BorderColor3=Color3.fromRGB(0,0,0)p.
BorderSizePixel=0 p.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.
Normal)p.Position=UDim2.fromScale(0,0.5)p.Size=UDim2.fromScale(1,1)p.Text=c.description p.TextColor3=Color3.fromRGB(89,
89,89)p.TextSize=16 p.TextWrapped=true p.TextXAlignment=Enum.TextXAlignment.Left p.TextYAlignment=Enum.TextYAlignment.
Top p.Parent=o o.Parent=e e.Parent=d return{button=e,title=j,description={frame=o,text=p}}end end function a.l()local c=
a.cache.l if not c then c={c=b()}a.cache.l=c end return c.c end end do local function b()return{PADDING=15,GAP=15}end
function a.m()local c=a.cache.m if not c then c={c=b()}a.cache.m=c end return c.c end end do local function b()local c,d
,e,f,g=game:GetService'TextService',a.i(),a.m(),16,Enum.Font.GothamMedium local function h(i,j,k)local l=Vector2.new(j,k
)local m=c:GetTextSize(i,f,g,l)return UDim2.fromOffset(m.X,m.Y)end local function i(j,k)if k=='X'then return j.X.Offset
end return j.Y.Offset end local function j(k,l,m,n)local o,p=m*2,0 for q,r in k:GetChildren()do if not r:IsA'GuiObject'
then continue end o+=i(r.Size,l)p+=1 if p>1 then o+=n end end return o end local function k(l,m)local n=h(m.text.Text,m.
frame.AbsoluteSize.X,math.huge)m.text.Size=n m.frame.Size=UDim2.new(1,0,0,n.Y.Offset)local o=j(l,'Y',e.PADDING,e.GAP)l.
Size=UDim2.new(1,0,0,o)end return{getTextSize=h,getComponentSize=j,scaleComponent=k}end function a.n()local c=a.cache.n
if not c then c={c=b()}a.cache.n=c end return c.c end end do local function b()local c,d,e,f,g,h,i=a.k(),a.i(),a.l(),a.
n(),a.e(),a.f(),a.g()local j,k,l=i.TAB.DAMPING_RATIO,i.TAB.FREQUENCY,{}l.__index=l function l.new(m,n)local o={view=e(m,
n)}g.new().connect(o.view.button.MouseButton1Click,function()if m.activated then m.activated()end end)g.new().connect(o.
view.button.MouseEnter,function()o:applyStyle(c.HOVERED)end)g.new().connect(o.view.button.MouseLeave,function()o:
applyStyle(c.DEFAULT)end)g.new().connect(o.view.button:GetPropertyChangedSignal'AbsoluteSize',function()f.
scaleComponent(o.view.button,o.view.description)end)f.scaleComponent(o.view.button,o.view.description)return
setmetatable(o,l)end function l.applyStyle(m,n)h.target(m.view.button,j,k,{BackgroundColor3=n.BUTTON_COLOR})end return l
end function a.o()local c=a.cache.o if not c then c={c=b()}a.cache.o=c end return c.c end end do local function b()
return function(c,d)local e=Instance.new'TextLabel'e.Name='Label'e.BackgroundColor3=Color3.fromRGB(255,255,255)e.
BackgroundTransparency=1 e.BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)e.Size=UDim2.new(1,0,0,20)e.Text
=c e.TextColor3=Color3.fromRGB(207,207,207)e.TextSize=16 e.TextTruncate=Enum.TextTruncate.SplitWord e.TextXAlignment=
Enum.TextXAlignment.Left e.Parent=d return e end end function a.p()local c=a.cache.p if not c then c={c=b()}a.cache.p=c
end return c.c end end do local function b()return function(c)local d=Instance.new'ScrollingFrame'd.Name='Section'd.
Active=true d.AnchorPoint=Vector2.new(0.5,0.5)d.AutomaticCanvasSize=Enum.AutomaticSize.Y d.BackgroundColor3=Color3.
fromRGB(255,255,255)d.BackgroundTransparency=1 d.BorderColor3=Color3.fromRGB(0,0,0)d.BorderSizePixel=0 d.CanvasSize=
UDim2.fromScale(0,0.5)d.LayoutOrder=2 d.Position=UDim2.fromScale(0.5,0.5)d.ScrollBarImageColor3=Color3.fromRGB(0,0,0)d.
ScrollBarImageTransparency=1 d.ScrollBarThickness=0 d.ScrollingDirection=Enum.ScrollingDirection.Y d.Size=UDim2.
fromScale(1,1)d.Visible=false local e=Instance.new'UIListLayout'e.Name='UIListLayout'e.HorizontalAlignment=Enum.
HorizontalAlignment.Center e.Padding=UDim.new(0,10)e.SortOrder=Enum.SortOrder.LayoutOrder e.Parent=d local f=Instance.
new'UIPadding'f.Name='UIPadding'f.PaddingBottom=UDim.new(0,15)f.PaddingLeft=UDim.new(0,15)f.PaddingRight=UDim.new(0,15)f
.PaddingTop=UDim.new(0,15)f.Parent=d d.Parent=c return d end end function a.q()local c=a.cache.q if not c then c={c=b()}
a.cache.q=c end return c.c end end do local function b()local c,d=a.j(),{}d.__index=d function d.new(e,f)local g={view=
nil}return setmetatable(g,d)end return d end function a.r()local c=a.cache.r if not c then c={c=b()}a.cache.r=c end
return c.c end end do local function b()return{DEFAULT={TAB_TRANSPARENCY=1,STROKE_TRANSPARENCY=1,ICON_COLOR=Color3.
fromRGB(89,89,89),TEXT_COLOR=Color3.fromRGB(89,89,89)},HOVERED={TAB_TRANSPARENCY=1,STROKE_TRANSPARENCY=1,ICON_COLOR=
Color3.fromRGB(157,157,157),TEXT_COLOR=Color3.fromRGB(157,157,157)},SELECTED={TAB_TRANSPARENCY=0,STROKE_TRANSPARENCY=0,
ICON_COLOR=Color3.fromRGB(207,207,207),TEXT_COLOR=Color3.fromRGB(207,207,207)}}end function a.s()local c=a.cache.s if
not c then c={c=b()}a.cache.s=c end return c.c end end do local function b()local c,d=a.b(),
'rbxassetid://73851699179305'return function(e,f)local g=Instance.new'TextButton'g.Name='Tab'g.AutoButtonColor=false g.
BackgroundColor3=Color3.fromRGB(16,16,16)g.BackgroundTransparency=1 g.BorderColor3=Color3.fromRGB(0,0,0)g.
BorderSizePixel=0 g.Size=UDim2.new(1,0,0,50)g.Text=''g.TextColor3=Color3.fromRGB(0,0,0)g.TextSize=14 local h=Instance.
new'UICorner'h.Name='UICorner'h.CornerRadius=UDim.new(0,5)h.Parent=g local i=Instance.new'UIStroke'i.Name='UIStroke'i.
ApplyStrokeMode=Enum.ApplyStrokeMode.Border i.Color=Color3.fromRGB(47,47,47)i.Transparency=1 i.Parent=g local j=Instance
.new'TextLabel'j.Name='Title'j.BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1 j.BorderColor3=
Color3.fromRGB(0,0,0)j.BorderSizePixel=0 j.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.
Medium,Enum.FontStyle.Normal)j.LayoutOrder=1 j.Size=UDim2.new(1,-30,1,0)j.Text=e.title j.TextColor3=Color3.fromRGB(89,89
,89)j.TextSize=16 j.TextTruncate=Enum.TextTruncate.SplitWord j.TextXAlignment=Enum.TextXAlignment.Left j.Parent=g local
k=Instance.new'UIPadding'k.Name='UIPadding'k.PaddingBottom=UDim.new(0,15)k.PaddingLeft=UDim.new(0,15)k.PaddingRight=UDim
.new(0,15)k.PaddingTop=UDim.new(0,15)k.Parent=g local l=Instance.new'UIListLayout'l.Name='UIListLayout'l.FillDirection=
Enum.FillDirection.Horizontal l.Padding=UDim.new(0,10)l.SortOrder=Enum.SortOrder.LayoutOrder l.VerticalAlignment=Enum.
VerticalAlignment.Center l.Parent=g local m=Instance.new'ImageLabel'm.Name='Icon'm.AnchorPoint=Vector2.new(0.5,0.5)m.
BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1 m.BorderColor3=Color3.fromRGB(0,0,0)m.
BorderSizePixel=0 m.Image=e.icon or d m.ImageColor3=Color3.fromRGB(89,89,89)m.Position=UDim2.fromScale(0.5,0.5)m.Size=
UDim2.fromOffset(20,20)m.Parent=g g.Parent=f return{tab=g,stroke=i,title=j,icon=m}end end function a.t()local c=a.cache.
t if not c then c={c=b()}a.cache.t=c end return c.c end end do local function b()local c,d,e,f,g,h,i,j,k,l,m,n,o=a.i(),a
.a(),a.j(),a.b(),a.o(),a.p(),a.q(),a.r(),a.s(),a.t(),a.e(),a.f(),a.g()local p,q,r=o.TAB.DAMPING_RATIO,o.TAB.FREQUENCY,{}
r.__index=r function r.new(s,t,u)local v={view=l(s,t.tabs),_tabs=u,_selected=false,_section=i(t.sections)}m.new().
connect(v.view.tab.MouseButton1Click,function()v:select()end)m.new().connect(v.view.tab.MouseEnter,function()if not v.
_selected then v:_applyStyle(k.HOVERED)end end)m.new().connect(v.view.tab.MouseLeave,function()if not v._selected then v
:_applyStyle(k.DEFAULT)end end)return setmetatable(v,r)end function r.select(s)for t,u in s._tabs do local v=u.view==s.
view local w=v and k.SELECTED or k.DEFAULT u:_applyStyle(w)u._selected=v u._section.Visible=v end end function r.
createLabel(s,t)return h(t,s._section)end function r.createButton(s,t)return g.new(t,s._section)end function r.
createSwitch(s,t)return j.new(t,s._section)end function r._applyStyle(s,t)n.target(s.view.tab,p,q,{
BackgroundTransparency=t.TAB_TRANSPARENCY})n.target(s.view.stroke,p,q,{Transparency=t.STROKE_TRANSPARENCY})n.target(s.
view.icon,p,q,{ImageColor3=t.ICON_COLOR})n.target(s.view.title,p,q,{TextColor3=t.TEXT_COLOR})end return r end function a
.u()local c=a.cache.u if not c then c={c=b()}a.cache.u=c end return c.c end end end local b,c,d,e,f=a.a(),a.b(),a.h(),a.
u(),{}f.__index=f function f.new(g)local h={root=d.new(g),tabs={}}return setmetatable(h,f)end function f.createTab(g,h)
local i=e.new(h,g.root.view,g.tabs)table.insert(g.tabs,i)if#g.tabs==1 then i:select()end return i end return f