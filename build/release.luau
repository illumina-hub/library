local a={cache={}}do do local function b()return nil end function a.a()local c=a.cache.a if not c then c={c=b()}a.cache.
a=c end return c.c end end do local function b()return nil end function a.b()local c=a.cache.b if not c then c={c=b()}a.
cache.b=c end return c.c end end do local function b()return nil end function a.c()local c=a.cache.c if not c then c={c=
b()}a.cache.c=c end return c.c end end do local function b()a.c()return nil end function a.d()local c=a.cache.d if not c
then c={c=b()}a.cache.d=c end return c.c end end do local function b()return nil end function a.e()local c=a.cache.e if
not c then c={c=b()}a.cache.e=c end return c.c end end do local function b()return nil end function a.f()local c=a.cache
.f if not c then c={c=b()}a.cache.f=c end return c.c end end do local function b()do a.c()a.b()a.f()end return nil end
function a.g()local c=a.cache.g if not c then c={c=b()}a.cache.g=c end return c.c end end do local function b()do a.c()a
.b()end return nil end function a.h()local c=a.cache.h if not c then c={c=b()}a.cache.h=c end return c.c end end do
local function b()do a.d()a.b()a.e()a.g()a.h()end return nil end function a.i()local c=a.cache.i if not c then c={c=b()}
a.cache.i=c end return c.c end end do local function b()do a.a()a.b()a.i()end return nil end function a.j()local c=a.
cache.j if not c then c={c=b()}a.cache.j=c end return c.c end end do local function b()return function(c)local d=
Instance.new'Frame'd.Name='Group'd.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1 d.BorderColor3
=Color3.fromRGB(0,0,0)d.BorderSizePixel=0 d.LayoutOrder=2 d.Size=UDim2.new(1,0,1,-51)local e=Instance.new'UIListLayout'e
.Name='UIListLayout'e.FillDirection=Enum.FillDirection.Horizontal e.SortOrder=Enum.SortOrder.LayoutOrder e.
VerticalAlignment=Enum.VerticalAlignment.Center e.Parent=d local f=Instance.new'ScrollingFrame'f.Name='Tabs'f.Active=
true f.AutomaticCanvasSize=Enum.AutomaticSize.Y f.BackgroundColor3=Color3.fromRGB(255,255,255)f.BackgroundTransparency=1
f.BorderColor3=Color3.fromRGB(0,0,0)f.BorderSizePixel=0 f.CanvasSize=UDim2.fromScale(0,0.5)f.ScrollBarImageColor3=Color3
.fromRGB(0,0,0)f.ScrollBarImageTransparency=1 f.ScrollBarThickness=0 f.ScrollingDirection=Enum.ScrollingDirection.Y f.
Size=UDim2.new(0,200,1,0)local g=Instance.new'UIListLayout'g.Name='UIListLayout'g.HorizontalAlignment=Enum.
HorizontalAlignment.Center g.Padding=UDim.new(0,10)g.SortOrder=Enum.SortOrder.LayoutOrder g.Parent=f local h=Instance.
new'UIPadding'h.Name='UIPadding'h.PaddingBottom=UDim.new(0,15)h.PaddingLeft=UDim.new(0,15)h.PaddingRight=UDim.new(0,15)h
.PaddingTop=UDim.new(0,15)h.Parent=f f.Parent=d local i=Instance.new'Frame'i.Name='Divider'i.BackgroundColor3=Color3.
fromRGB(47,47,47)i.BorderColor3=Color3.fromRGB(0,0,0)i.BorderSizePixel=0 i.LayoutOrder=1 i.Size=UDim2.new(0,1,1,0)i.
Parent=d local j=Instance.new'Frame'j.Name='Sections'j.BackgroundColor3=Color3.fromRGB(255,255,255)j.
BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0 j.LayoutOrder=2 j.Size=UDim2.new(1,-201
,1,0)j.Parent=d d.Parent=c return{tabs=f,sections=j}end end function a.k()local c=a.cache.k if not c then c={c=b()}a.
cache.k=c end return c.c end end do local function b()return function(c)local d=Instance.new'Frame'd.Name='Header'd.
BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1 d.BorderColor3=Color3.fromRGB(0,0,0)d.
BorderSizePixel=0 d.Size=UDim2.new(1,0,0,50)local e=Instance.new'UIListLayout'e.Name='UIListLayout'e.FillDirection=Enum.
FillDirection.Horizontal e.SortOrder=Enum.SortOrder.LayoutOrder e.VerticalAlignment=Enum.VerticalAlignment.Center e.
Parent=d local f=Instance.new'UIPadding'f.Name='UIPadding'f.PaddingBottom=UDim.new(0,15)f.PaddingLeft=UDim.new(0,15)f.
PaddingRight=UDim.new(0,15)f.PaddingTop=UDim.new(0,15)f.Parent=d local g=Instance.new'TextLabel'g.Name='Title'g.
BackgroundColor3=Color3.fromRGB(255,255,255)g.BackgroundTransparency=1 g.BorderColor3=Color3.fromRGB(0,0,0)g.
BorderSizePixel=0 g.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.
Normal)g.Size=UDim2.new(1,-110,1,0)g.Text='Illumina'g.TextColor3=Color3.fromRGB(207,207,207)g.TextSize=16 g.
TextXAlignment=Enum.TextXAlignment.Left g.Parent=d local h=Instance.new'TextButton'h.Name='Close'h.AutoButtonColor=false
h.BackgroundColor3=Color3.fromRGB(255,255,255)h.BackgroundTransparency=1 h.BorderColor3=Color3.fromRGB(0,0,0)h.
BorderSizePixel=0 h.LayoutOrder=3 h.Size=UDim2.fromOffset(40,40)h.Text=''h.TextColor3=Color3.fromRGB(0,0,0)h.TextSize=14
local i=Instance.new'ImageLabel'i.Name='Icon'i.AnchorPoint=Vector2.new(0.5,0.5)i.BackgroundColor3=Color3.fromRGB(255,255
,255)i.BackgroundTransparency=1 i.BorderColor3=Color3.fromRGB(0,0,0)i.BorderSizePixel=0 i.Image=
'rbxassetid://74451597845240'i.ImageColor3=Color3.fromRGB(207,207,207)i.Position=UDim2.fromScale(0.5,0.5)i.Size=UDim2.
fromOffset(20,20)i.Parent=h h.Parent=d local j=Instance.new'TextButton'j.Name='Fullscreen'j.AutoButtonColor=false j.
BackgroundColor3=Color3.fromRGB(255,255,255)j.BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(0,0,0)j.
BorderSizePixel=0 j.LayoutOrder=2 j.Size=UDim2.fromOffset(40,40)j.Text=''j.TextColor3=Color3.fromRGB(0,0,0)j.TextSize=14
local k=Instance.new'ImageLabel'k.Name='Icon'k.AnchorPoint=Vector2.new(0.5,0.5)k.BackgroundColor3=Color3.fromRGB(255,255
,255)k.BackgroundTransparency=1 k.BorderColor3=Color3.fromRGB(0,0,0)k.BorderSizePixel=0 k.Image=
'rbxassetid://92682004738840'k.ImageColor3=Color3.fromRGB(207,207,207)k.Position=UDim2.fromScale(0.5,0.5)k.Size=UDim2.
fromOffset(20,20)k.Parent=j j.Parent=d local l=Instance.new'TextButton'l.Name='Minimize'l.AutoButtonColor=false l.
BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1 l.BorderColor3=Color3.fromRGB(0,0,0)l.
BorderSizePixel=0 l.LayoutOrder=1 l.Size=UDim2.fromOffset(40,40)l.Text=''l.TextColor3=Color3.fromRGB(0,0,0)l.TextSize=14
local m=Instance.new'ImageLabel'm.Name='Icon'm.AnchorPoint=Vector2.new(0.5,0.5)m.BackgroundColor3=Color3.fromRGB(255,255
,255)m.BackgroundTransparency=1 m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Image=
'rbxassetid://83770212086491'm.ImageColor3=Color3.fromRGB(207,207,207)m.Position=UDim2.fromScale(0.5,0.5)m.Size=UDim2.
fromOffset(20,20)m.Parent=l l.Parent=d d.Parent=c local n=Instance.new'Frame'n.Name='Divider'n.BackgroundColor3=Color3.
fromRGB(47,47,47)n.BorderColor3=Color3.fromRGB(0,0,0)n.BorderSizePixel=0 n.LayoutOrder=1 n.Size=UDim2.new(1,0,0,1)n.
Parent=c return{header=d,minimize=l,fullscreen=j,close=h}end end function a.l()local c=a.cache.l if not c then c={c=b()}
a.cache.l=c end return c.c end end do local function b()local c=gethui()or cloneref(game:GetService'CoreGui')return
function()local d=c:FindFirstChild'Illumina'if d then d:Destroy()end local e=Instance.new'ScreenGui'e.Name='Illumina'e.
IgnoreGuiInset=true e.ResetOnSpawn=false e.ScreenInsets=Enum.ScreenInsets.DeviceSafeInsets local f=Instance.new'Frame'f.
Name='Container'f.AnchorPoint=Vector2.new(0.5,0.5)f.BackgroundColor3=Color3.fromRGB(10,10,10)f.BorderColor3=Color3.
fromRGB(0,0,0)f.BorderSizePixel=0 f.Position=UDim2.fromScale(0.5,0.5)f.Size=UDim2.fromOffset(750,500)local g=Instance.
new'UIStroke'g.Name='UIStroke'g.ApplyStrokeMode=Enum.ApplyStrokeMode.Border g.Color=Color3.fromRGB(47,47,47)g.Parent=f
local h=Instance.new'UICorner'h.Name='UICorner'h.CornerRadius=UDim.new(0,10)h.Parent=f local i=Instance.new'UICorner'i.
Name='UICorner'i.CornerRadius=UDim.new(0,10)i.Parent=f local j=Instance.new'UIListLayout'j.Name='UIListLayout'j.
HorizontalAlignment=Enum.HorizontalAlignment.Center j.SortOrder=Enum.SortOrder.LayoutOrder j.Parent=f f.Parent=e e.
Parent=c return{screen=e,container=f}end end function a.m()local c=a.cache.m if not c then c={c=b()}a.cache.m=c end
return c.c end end do local function b()local c,d,e=a.k(),a.l(),a.m()return function()local f=e()local g,h=d(f.container
),c(f.container)return{root=f,header=g,group=h}end end function a.n()local c=a.cache.n if not c then c={c=b()}a.cache.n=
c end return c.c end end do local function b()local c,d=a.i(),'rbxassetid://73851699179305'return function(e,f)local g=
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
component=g,stroke=i,title=j,icon=m}end end function a.o()local c=a.cache.o if not c then c={c=b()}a.cache.o=c end
return c.c end end do local function b()return function(c)local d=Instance.new'ScrollingFrame'd.Name='Section'd.Active=
true d.AnchorPoint=Vector2.new(0.5,0.5)d.AutomaticCanvasSize=Enum.AutomaticSize.Y d.BackgroundColor3=Color3.fromRGB(255,
255,255)d.BackgroundTransparency=1 d.BorderColor3=Color3.fromRGB(0,0,0)d.BorderSizePixel=0 d.CanvasSize=UDim2.fromScale(
0,0.5)d.LayoutOrder=2 d.Position=UDim2.fromScale(0.5,0.5)d.ScrollBarImageColor3=Color3.fromRGB(0,0,0)d.
ScrollBarImageTransparency=1 d.ScrollBarThickness=0 d.ScrollingDirection=Enum.ScrollingDirection.Y d.Size=UDim2.
fromScale(1,1)d.Visible=false local e=Instance.new'UIListLayout'e.Name='UIListLayout'e.HorizontalAlignment=Enum.
HorizontalAlignment.Center e.Padding=UDim.new(0,10)e.SortOrder=Enum.SortOrder.LayoutOrder e.Parent=d local f=Instance.
new'UIPadding'f.Name='UIPadding'f.PaddingBottom=UDim.new(0,15)f.PaddingLeft=UDim.new(0,15)f.PaddingRight=UDim.new(0,15)f
.PaddingTop=UDim.new(0,15)f.Parent=d d.Parent=c return d end end function a.p()local c=a.cache.p if not c then c={c=b()}
a.cache.p=c end return c.c end end do local function b()return function(c,d)local e=Instance.new'TextLabel'e.Name=
'Label'e.BackgroundColor3=Color3.fromRGB(255,255,255)e.BackgroundTransparency=1 e.BorderColor3=Color3.fromRGB(0,0,0)e.
BorderSizePixel=0 e.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.
Normal)e.Size=UDim2.new(1,0,0,20)e.Text=c e.TextColor3=Color3.fromRGB(207,207,207)e.TextSize=16 e.TextTruncate=Enum.
TextTruncate.SplitWord e.TextXAlignment=Enum.TextXAlignment.Left e.Parent=d return e end end function a.q()local c=a.
cache.q if not c then c={c=b()}a.cache.q=c end return c.c end end do local function b()a.d()return function(c,d)local e=
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
Top p.Parent=o o.Parent=e e.Parent=d return{component=e,title=j,description={frame=o,text=p}}end end function a.r()local
c=a.cache.r if not c then c={c=b()}a.cache.r=c end return c.c end end do local function b()a.h()return function(c,d)
local e=Instance.new'TextButton'e.Name='Switch'e.AutoButtonColor=false e.BackgroundColor3=Color3.fromRGB(16,16,16)e.
BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.Size=UDim2.new(1,0,0,113)e.Text=''e.TextColor3=Color3.fromRGB(0,
0,0)e.TextSize=14 local f=Instance.new'UICorner'f.Name='UICorner'f.CornerRadius=UDim.new(0,5)f.Parent=e local g=Instance
.new'Frame'g.Name='Content'g.BackgroundColor3=Color3.fromRGB(255,255,255)g.BackgroundTransparency=1 g.BorderColor3=
Color3.fromRGB(0,0,0)g.BorderSizePixel=0 g.Size=UDim2.new(1,0,0,20)local h=Instance.new'UIListLayout'h.Name=
'UIListLayout'h.FillDirection=Enum.FillDirection.Horizontal h.Padding=UDim.new(0,10)h.SortOrder=Enum.SortOrder.
LayoutOrder h.VerticalAlignment=Enum.VerticalAlignment.Center h.Parent=g local i=Instance.new'TextLabel'i.Name='Title'i.
BackgroundColor3=Color3.fromRGB(255,255,255)i.BackgroundTransparency=1 i.BorderColor3=Color3.fromRGB(0,0,0)i.
BorderSizePixel=0 i.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.
Normal)i.Size=UDim2.new(1,-50,1,0)i.Text=c.title i.TextColor3=Color3.fromRGB(207,207,207)i.TextSize=16 i.TextTruncate=
Enum.TextTruncate.SplitWord i.TextXAlignment=Enum.TextXAlignment.Left i.Parent=g local j=Instance.new'Frame'j.Name=
'Thumb'j.BackgroundColor3=Color3.fromRGB(47,47,47)j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0 j.Size=UDim2.
fromOffset(40,20)local k=Instance.new'UICorner'k.Name='UICorner'k.CornerRadius=UDim.new(1,0)k.Parent=j local l=Instance.
new'Frame'l.Name='Circle'l.AnchorPoint=Vector2.new(0,0.5)l.BackgroundColor3=Color3.fromRGB(126,126,126)l.BorderColor3=
Color3.fromRGB(0,0,0)l.BorderSizePixel=0 l.Position=UDim2.fromScale(0,0.5)l.Size=UDim2.fromOffset(16,16)local m=Instance
.new'UICorner'm.Name='UICorner'm.CornerRadius=UDim.new(1,0)m.Parent=l l.Parent=j local n=Instance.new'UIPadding'n.Name=
'UIPadding'n.PaddingBottom=UDim.new(0,2)n.PaddingLeft=UDim.new(0,2)n.PaddingRight=UDim.new(0,2)n.PaddingTop=UDim.new(0,2
)n.Parent=j j.Parent=g g.Parent=e local o=Instance.new'UIListLayout'o.Name='UIListLayout'o.HorizontalAlignment=Enum.
HorizontalAlignment.Center o.Padding=UDim.new(0,15)o.SortOrder=Enum.SortOrder.LayoutOrder o.Parent=e local p=Instance.
new'UIPadding'p.Name='UIPadding'p.PaddingBottom=UDim.new(0,15)p.PaddingLeft=UDim.new(0,15)p.PaddingRight=UDim.new(0,15)p
.PaddingTop=UDim.new(0,15)p.Parent=e local q=Instance.new'UIStroke'q.Name='UIStroke'q.ApplyStrokeMode=Enum.
ApplyStrokeMode.Border q.Color=Color3.fromRGB(47,47,47)q.Parent=e local r=Instance.new'Frame'r.Name='Divider'r.
BackgroundColor3=Color3.fromRGB(47,47,47)r.BorderColor3=Color3.fromRGB(0,0,0)r.BorderSizePixel=0 r.Size=UDim2.new(1,30,0
,1)r.Parent=e local s=Instance.new'Frame's.Name='Description's.BackgroundColor3=Color3.fromRGB(255,255,255)s.
BackgroundTransparency=1 s.BorderColor3=Color3.fromRGB(0,0,0)s.BorderSizePixel=0 s.Size=UDim2.new(1,0,0,32)local t=
Instance.new'TextLabel't.Name='Text't.AnchorPoint=Vector2.new(0,0.5)t.BackgroundColor3=Color3.fromRGB(255,255,255)t.
BackgroundTransparency=1 t.BorderColor3=Color3.fromRGB(0,0,0)t.BorderSizePixel=0 t.FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.Normal)t.Position=UDim2.fromScale(0,0.5
)t.Size=UDim2.fromScale(1,1)t.Text=c.description t.TextColor3=Color3.fromRGB(89,89,89)t.TextSize=16 t.TextWrapped=true t
.TextXAlignment=Enum.TextXAlignment.Left t.TextYAlignment=Enum.TextYAlignment.Top t.Parent=s s.Parent=e e.Parent=d
return{component=e,title=i,thumb={frame=j,circle=l},description={frame=s,text=t}}end end function a.s()local c=a.cache.s
if not c then c={c=b()}a.cache.s=c end return c.c end end do local function b()a.g()return function(c,d)local e=Instance
.new'Frame'e.Name='Slider'e.BackgroundColor3=Color3.fromRGB(16,16,16)e.BorderColor3=Color3.fromRGB(0,0,0)e.
BorderSizePixel=0 e.Size=UDim2.new(1,0,0,113)local f=Instance.new'UIStroke'f.Name='UIStroke'f.ApplyStrokeMode=Enum.
ApplyStrokeMode.Border f.Color=Color3.fromRGB(47,47,47)f.Parent=e local g=Instance.new'UIPadding'g.Name='UIPadding'g.
PaddingBottom=UDim.new(0,15)g.PaddingLeft=UDim.new(0,15)g.PaddingRight=UDim.new(0,15)g.PaddingTop=UDim.new(0,15)g.Parent
=e local h=Instance.new'UIListLayout'h.Name='UIListLayout'h.HorizontalAlignment=Enum.HorizontalAlignment.Center h.
Padding=UDim.new(0,15)h.SortOrder=Enum.SortOrder.LayoutOrder h.Parent=e local i=Instance.new'UICorner'i.Name='UICorner'i
.CornerRadius=UDim.new(0,5)i.Parent=e local j=Instance.new'Frame'j.Name='Content'j.BackgroundColor3=Color3.fromRGB(255,
255,255)j.BackgroundTransparency=1 j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0 j.Size=UDim2.new(1,0,0,20)
local k=Instance.new'UIListLayout'k.Name='UIListLayout'k.FillDirection=Enum.FillDirection.Horizontal k.Padding=UDim.new(
0,10)k.SortOrder=Enum.SortOrder.LayoutOrder k.VerticalAlignment=Enum.VerticalAlignment.Center k.Parent=j local l=
Instance.new'TextLabel'l.Name='Value'l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1 l.
BorderColor3=Color3.fromRGB(0,0,0)l.BorderSizePixel=0 l.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',
Enum.FontWeight.Medium,Enum.FontStyle.Normal)l.LayoutOrder=1 l.Size=UDim2.new(0,19,1,0)l.Text='75'l.TextColor3=Color3.
fromRGB(207,207,207)l.TextSize=16 l.TextXAlignment=Enum.TextXAlignment.Right l.Parent=j local m=Instance.new'Frame'm.
Name='Track'm.BackgroundColor3=Color3.fromRGB(47,47,47)m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.
LayoutOrder=2 m.Size=UDim2.fromOffset(200,6)local n=Instance.new'UICorner'n.Name='UICorner'n.CornerRadius=UDim.new(1,0)n
.Parent=m local o=Instance.new'Frame'o.Name='Fill'o.AnchorPoint=Vector2.new(0,0.5)o.BackgroundColor3=Color3.fromRGB(211,
211,211)o.BorderColor3=Color3.fromRGB(0,0,0)o.BorderSizePixel=0 o.Position=UDim2.fromScale(0,0.5)o.Size=UDim2.fromScale(
0.75,1)local p=Instance.new'UICorner'p.Name='UICorner'p.CornerRadius=UDim.new(1,0)p.Parent=o local q=Instance.new'Frame'
q.Name='Circle'q.AnchorPoint=Vector2.new(0.5,0.5)q.BackgroundColor3=Color3.fromRGB(255,255,255)q.BorderColor3=Color3.
fromRGB(0,0,0)q.BorderSizePixel=0 q.Position=UDim2.fromScale(1,0.5)q.Size=UDim2.fromOffset(16,16)local r=Instance.new
'UICorner'r.Name='UICorner'r.CornerRadius=UDim.new(1,0)r.Parent=q q.Parent=o o.Parent=m local s=Instance.new'TextButton'
s.Name='Hitbox's.AnchorPoint=Vector2.new(0.5,0.5)s.AutoButtonColor=false s.BackgroundColor3=Color3.fromRGB(255,255,255)s
.BackgroundTransparency=1 s.BorderColor3=Color3.fromRGB(0,0,0)s.BorderSizePixel=0 s.Position=UDim2.fromScale(0.5,0.5)s.
Size=UDim2.new(1,0,1,20)s.Text=''s.TextColor3=Color3.fromRGB(0,0,0)s.TextSize=14 s.Parent=m m.Parent=j local t=Instance.
new'TextLabel't.Name='Title't.BackgroundColor3=Color3.fromRGB(255,255,255)t.BackgroundTransparency=1 t.BorderColor3=
Color3.fromRGB(0,0,0)t.BorderSizePixel=0 t.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.
Medium,Enum.FontStyle.Normal)t.Size=UDim2.new(1,-239,1,0)t.Text=c.title t.TextColor3=Color3.fromRGB(207,207,207)t.
TextSize=16 t.TextTruncate=Enum.TextTruncate.SplitWord t.TextXAlignment=Enum.TextXAlignment.Left t.Parent=j j.Parent=e
local u=Instance.new'Frame'u.Name='Divider'u.BackgroundColor3=Color3.fromRGB(47,47,47)u.BorderColor3=Color3.fromRGB(0,0,
0)u.BorderSizePixel=0 u.Size=UDim2.new(1,30,0,1)u.Parent=e local v=Instance.new'Frame'v.Name='Description'v.
BackgroundColor3=Color3.fromRGB(255,255,255)v.BackgroundTransparency=1 v.BorderColor3=Color3.fromRGB(0,0,0)v.
BorderSizePixel=0 v.Size=UDim2.new(1,0,0,32)local w=Instance.new'TextLabel'w.Name='Text'w.AnchorPoint=Vector2.new(0,0.5)
w.BackgroundColor3=Color3.fromRGB(255,255,255)w.BackgroundTransparency=1 w.BorderColor3=Color3.fromRGB(0,0,0)w.
BorderSizePixel=0 w.FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.
Normal)w.Position=UDim2.fromScale(0,0.5)w.Size=UDim2.fromScale(1,1)w.Text=c.description w.TextColor3=Color3.fromRGB(89,
89,89)w.TextSize=16 w.TextWrapped=true w.TextXAlignment=Enum.TextXAlignment.Left w.TextYAlignment=Enum.TextYAlignment.
Top w.Parent=v v.Parent=e e.Parent=d return{component=e,title=t,value=l,track={frame=m,fill=o,circle=q,hitbox=s},
description={frame=v,text=w}}end end function a.t()local c=a.cache.t if not c then c={c=b()}a.cache.t=c end return c.c
end end do local function b()return{container=a.n(),tab=a.o(),section=a.p(),label=a.q(),button=a.r(),switch=a.s(),slider
=a.t()}end function a.u()local c=a.cache.u if not c then c={c=b()}a.cache.u=c end return c.c end end do local function b
()local c,d=a.a(),{}d.__index=d function d.new(e)local f=setmetatable({},d)f.appearance=e return f end function d.
minimize(e)local f=e.appearance.root.screen f.Enabled=not f.Enabled end function d.fullscreen(e)end function d.destroy(e
)e.appearance.root.screen:Destroy()end return d end function a.v()local c=a.cache.v if not c then c={c=b()}a.cache.v=c
end return c.c end end do local function b()return{PADDING=15,GAP=15,DAMPING_RATIO=1,FREQUENCY=6}end function a.w()local
c=a.cache.w if not c then c={c=b()}a.cache.w=c end return c.c end end do local function b()return{DEFAULT={TAB=1,STROKE=
1,ICON=Color3.fromRGB(89,89,89),TITTLE=Color3.fromRGB(89,89,89)},HOVERED={TAB=1,STROKE=1,ICON=Color3.fromRGB(157,157,157
),TITTLE=Color3.fromRGB(157,157,157)},SELECTED={TAB=0,STROKE=0,ICON=Color3.fromRGB(207,207,207),TITTLE=Color3.fromRGB(
207,207,207)}}end function a.x()local c=a.cache.x if not c then c={c=b()}a.cache.x=c end return c.c end end do
local function b()local c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=true,6.781684027777778E-8,1E-4,math.rad(0.01),math.rad(0.1),1e-5
,game:GetService'RunService',math.pi,math.exp,math.sin,math.cos,math.min,math.max,math.sqrt,math.atan2,math.round
local function s(t)local u=0 for v,w in t do u+=w^2 end return u end local function t(u,v)local w=0 for x,y in u do w+=(
v[x]-y)^2 end return w end local u={}do u.__index=u function u.new(v,w,x,y,z)local A=z.toIntermediate(x)return
setmetatable({d=v,f=w,g=A,p=A,v=table.create(#A,0),typedat=z,rawGoal=y},u)end function u.setGoal(v,w)v.rawGoal=w v.g=v.
typedat.toIntermediate(w)end function u.setDampingRatio(v,w)v.d=w end function u.setFrequency(v,w)v.f=w end function u.
canSleep(v)if s(v.v)>e then return false end if t(v.p,v.g)>d then return false end return true end function u.step(v,w)
local x,y,z,A,B=v.d,v.f*(2*j),v.g,v.p,v.v if x==1 then local C=k(-y*w)local D=w*C local E,F,G=C+D*y,C-D*y,D*y*y for H=1,
#A do local I=A[H]-z[H]A[H]=I*E+B[H]*D+z[H]B[H]=B[H]*F-I*G end elseif x<1 then local C,D=k(-x*y*w),p(1-x*x)local E,F,G=
m(w*y*D),(l(w*y*D))if D>h then G=F/D else local H=w*y G=H+((H*H)*(D*D)*(D*D)/20-D*D)*(H*H*H)/6 end local H if y*D>h then
H=F/(y*D)else local I=y*D H=w+((w*w)*(I*I)*(I*I)/20-I*I)*(w*w*w)/6 end for I=1,#A do local J=A[I]-z[I]A[I]=(J*(E+G*x)+B[
I]*H)*C+z[I]B[I]=(B[I]*(E-G*x)-J*(G*y))*C end else local C=p(x*x-1)local D,E=-y*(x+C),-y*(x-C)local F,G=k(D*w),k(E*w)for
H=1,#A do local I=A[H]-z[H]local J=(B[H]-I*D)/(2*y*C)local K=F*(I-J)A[H]=K+J*G+z[H]B[H]=K*D+J*G*E end end return v.
typedat.fromIntermediate(v.p)end end local v={}do v.__index=v function v.new(w,x,y,z)return setmetatable({d=w,f=x,g=z:
Orthonormalize(),p=y:Orthonormalize(),v=Vector3.zero},v)end function v.setGoal(w,x)w.g=x:Orthonormalize()end function v.
setDampingRatio(w,x)w.d=x end function v.setFrequency(w,x)w.f=x end local function w(x,y)return x.X*y.X+x.Y*y.Y+x.Z*y.Z
end local function x(y,z)local A,B,C=w(y.XVector,z.XVector),w(y.YVector,z.YVector),w(y.ZVector,z.ZVector)local D=A+B+C
return D>1+2*m(f)end local function y(z,A)local B,C,D=w(z.XVector,A.XVector),w(z.YVector,A.YVector),w(z.ZVector,A.
ZVector)local E=B+C+D-1 return q(p(o(0,1-E*E*0.25)),E*0.5)end local function z(A,B)local C,D,E,F,G=m(B),l(B),A.X,A.Y,A.Z
local H,I,J=E*F*(1-C),F*G*(1-C),G*E*(1-C)local K,L,M=Vector3.new(E*E*(1-C)+C,H+G*D,J-F*D),Vector3.new(H-G*D,F*F*(1-C)+C,
I+E*D),Vector3.new(J+F*D,I-E*D,G*G*(1-C)+C)return CFrame.fromMatrix(Vector3.zero,K,L,M):Orthonormalize()end
local function A(B,C)local D,E=CFrame.identity,B.Magnitude if E>1e-6 then D=z(B.Unit,E)end return D*C end local function
B(C,D)local E,F=(C*D:Inverse()):ToAxisAngle(),y(C,D)return E.Unit*F end function v.canSleep(C)local D,E=x(C.p,C.g),C.v.
Magnitude<g return D and E end function v.step(C,D)local E,F,G,H,I=C.d,C.f*(2*j),C.g,C.p,C.v local J,K,L,M=B(H,G),(k(-E*
F*D))if E==1 then L=A((J*(1+F*D)+I*D)*K,G)M=(I*(1-D*F)-J*(D*F*F))*K elseif E<1 then local N=p(1-E*E)local O,P=m(D*F*N),
l(D*F*N)local Q,R=P/(F*N),P/N L=A((J*(O+R*E)+I*Q)*K,G)M=(I*(O-R*E)-J*(R*F))*K else local N=p(E*E-1)local O,P=-F*(E+N),-F
*(E-N)local Q=(I-J*O)/(2*F*N)local R=J-Q local S,T=R*k(O*D),Q*k(P*D)L=A(S+T,G)M=S*O+T*P end C.p=L C.v=M return L end end
local w,x={springType=u.new,toIntermediate=function(w)return{w.X,w.Y,w.Z}end,fromIntermediate=function(w)return Vector3.
new(w[1],w[2],w[3])end},{}do x.__index=x function x.new(y,z,A,B,C)return setmetatable({rawGoal=B,_position=u.new(y,z,A.
Position,B.Position,w),_rotation=v.new(y,z,A.Rotation,B.Rotation)},x)end function x:setGoal(y)self.rawGoal=y self.
_position:setGoal(y.Position)self._rotation:setGoal(y.Rotation)end function x:setDampingRatio(y)self._position.d=y self.
_rotation.d=y end function x:setFrequency(y)self._position.f=y self._rotation.f=y end function x:canSleep()return self.
_position:canSleep()and self._rotation:canSleep()end function x:step(y)local z,A=self._position:step(y),self._rotation:
step(y)return A+z end end local y,z do local function A(B)return B<0.0404482362771076 and B/12.92 or 0.87941546140213*(B
+0.055)^2.4 end local function B(C)return C<3.1306684424999998e-3 and 12.92*C or 1.055*C^(0.4166666666666667)-0.055 end
function y(C)local D,E,F=C.R,C.G,C.B D=A(D)E=A(E)F=A(F)local G,H,I=0.9257063972951867*D-0.8333736323779866*E-
0.09209820666085898*F,0.2125862307855956*D+0.7151703037034108*E+0.0722004986433362*F,3.6590806972265884*D+
11.442689580057424*E+4.114991502426484*F local J,K,L=H>0.008856451679035631 and 116*H^(0.3333333333333333)-16 or
903.296296296296*H if I>1e-14 then K=J*G/I L=J*(9*H/I-0.46832)else K=-0.19783*J L=-0.46832*J end return{J,K,L}end
function z(C)local D=C[1]if D<0.0197955 then return Color3.new(0,0,0)end local E,F,G=C[2]/D+0.19783,C[3]/D+0.46832,(D+16
)/116 G=G>0.20689655172413793 and G*G*G or 0.12841854934601665*G-0.01771290335807126 local H,I=G*E/F,G*((3-0.75*E)/F-5)
local J,K,L=7.2914074*H-1.537208*G-0.4986286*I,-2.180094*H+1.8757561*G+0.0415175*I,0.1253477*H-0.2040211*G+1.0569959*I
if J<0 and J<K and J<L then J,K,L=0,K-J,L-J elseif K<0 and K<L then J,K,L=J-K,0,L-K elseif L<0 then J,K,L=J-L,K-L,0 end
return Color3.new(n(B(J),1),n(B(K),1),n(B(L),1))end end local A,B={boolean={springType=u.new,toIntermediate=function(A)
return{A and 1 or 0}end,fromIntermediate=function(A)return A[1]>=0.5 end},number={springType=u.new,toIntermediate=
function(A)return{A}end,fromIntermediate=function(A)return A[1]end},NumberRange={springType=u.new,toIntermediate=
function(A)return{A.Min,A.Max}end,fromIntermediate=function(A)return NumberRange.new(A[1],A[2])end},UDim={springType=u.
new,toIntermediate=function(A)return{A.Scale,A.Offset}end,fromIntermediate=function(A)return UDim.new(A[1],r(A[2]))end},
UDim2={springType=u.new,toIntermediate=function(A)local B,C=A.X,A.Y return{B.Scale,B.Offset,C.Scale,C.Offset}end,
fromIntermediate=function(A)return UDim2.new(A[1],r(A[2]),A[3],r(A[4]))end},Vector2={springType=u.new,toIntermediate=
function(A)return{A.X,A.Y}end,fromIntermediate=function(A)return Vector2.new(A[1],A[2])end},Vector3=w,Color3={springType
=u.new,toIntermediate=y,fromIntermediate=z},ColorSequence={springType=u.new,toIntermediate=function(A)local B=A.
Keypoints local C,D=y(B[1].Value),y(B[#B].Value)return{C[1],C[2],C[3],D[1],D[2],D[3]}end,fromIntermediate=function(A)
return ColorSequence.new(z{A[1],A[2],A[3]},z{A[4],A[5],A[6]})end},CFrame={springType=x.new,toIntermediate=error,
fromIntermediate=error}},{Pivot={class='PVInstance',get=function(A)return A:GetPivot()end,set=function(A,B)A:PivotTo(B)
end},Scale={class='Model',get=function(A)return A:GetScale()end,set=function(A,B)local C,D=1.4020000000000001e-45,
16777216 B=math.clamp(B,C,D)A:ScaleTo(B)end}}local function C(D,E)local F=B[E]if F and D:IsA(F.class)then return F.get(D
)else return(D)[E]end end local function D(E,F,G)local H=B[F]if H and E:IsA(H.class)then H.set(E,G)else(E)[F]=G end end
local E,F,G={},{},{}local function H(I,J)for K,L in I do for M,N in L do if N:canSleep()then L[M]=nil D(K,M,N.rawGoal)
else D(K,M,N:step(J))end end if not next(L)then I[K]=nil local M=G[K]if M then G[K]=nil for N,O in M do task.spawn(O)end
end end end end i.PreSimulation:Connect(function(I)H(E,I)end)i.PostSimulation:Connect(function(I)H(F,I)end)
local function I(J,K,L,M)if not L:find(typeof(M))then error(string.format('bad argument #%s to %s (%s expected, got %s)'
,tostring(J),tostring(K),tostring(L),tostring(typeof(M))),3)end end local J={}function J.target(K,L,M,N)if c then I(1,
'spr.target','Instance',K)I(2,'spr.target','number',L)I(3,'spr.target','number',M)I(4,'spr.target','table',N)end if L~=L
or L<0 then error(('expected damping ratio >= 0; got %.2f'):format(L),2)end if M~=M or M<0 then error((
'expected undamped frequency >= 0; got %.2f'):format(M),2)end local O if K:IsA'Camera'then O=F else O=E end local P=O[K]
if not P then P={}O[K]=P end for Q,R in N do local S=C(K,Q)if c and typeof(R)~=typeof(S)then error(string.format(
'bad property %s to spr.target (%s expected, got %s)',tostring(Q),tostring(typeof(S)),tostring(typeof(R))),2)end if M==
math.huge then D(K,Q,R)P[Q]=nil continue end local T=P[Q]if not T then local U=A[typeof(R)]if not U then error(
'unsupported type: '..typeof(R),2)end T=U.springType(L,M,S,R,U)P[Q]=T end T:setGoal(R)T:setDampingRatio(L)T:
setFrequency(M)end if not next(P)then O[K]=nil end end function J.stop(K,L)if c then I(1,'spr.stop','Instance',K)I(2,
'spr.stop','string|nil',L)end if L then local M=E[K]or F[K]if M then M[L]=nil end else E[K]=nil F[K]=nil end end
function J.completed(K,L)if c then I(1,'spr.completed','Instance',K)I(2,'spr.completed','function',L)end local M=G[K]if
M then table.insert(M,L)else G[K]={L}end end return table.freeze(J)end function a.y()local c=a.cache.y if not c then c={
c=b()}a.cache.y=c end return c.c end end do local function b()local c,d,e,f,g=a.i(),a.w(),a.x(),a.y(),{}g.__index=g
function g.new(h,i)local j=setmetatable({},g)j.appearance=h j.tabs=i j.selected=false return j end function g.select(h)
for i,j in h.tabs do local k=j.appearance==h.appearance local l=k and e.SELECTED or e.DEFAULT j.controller:applyStyle(l)
j.controller.selected=k j.section.Visible=k end end function g.applyStyle(h,i)local j=h.appearance f.target(j.component,
d.DAMPING_RATIO,d.FREQUENCY,{BackgroundTransparency=i.TAB})f.target(j.stroke,d.DAMPING_RATIO,d.FREQUENCY,{Transparency=i
.STROKE})f.target(j.icon,d.DAMPING_RATIO,d.FREQUENCY,{ImageColor3=i.ICON})f.target(j.title,d.DAMPING_RATIO,d.FREQUENCY,{
TextColor3=i.TITTLE})end return g end function a.z()local c=a.cache.z if not c then c={c=b()}a.cache.z=c end return c.c
end end do local function b()local c,d,e,f=a.d(),a.w(),a.y(),{}f.__index=f function f.new(g,h)local i=setmetatable({},f)
i.appearance=g i.config=h return i end function f.activate(g)g.config.callback()end function f.applyStyle(g,h)e.target(g
.appearance.component,d.DAMPING_RATIO,d.FREQUENCY,{BackgroundColor3=h.BUTTON})end return f end function a.A()local c=a.
cache.A if not c then c={c=b()}a.cache.A=c end return c.c end end do local function b()return{DISABLED={THUMB=Color3.
fromRGB(47,47,47),CIRCLE=Color3.fromRGB(126,126,126),POSITION=UDim2.fromScale(0,0.5),ANCHOR_POINT=Vector2.new(0,0.5)},
ENABLED={THUMB=Color3.fromRGB(255,255,255),CIRCLE=Color3.fromRGB(34,34,34),POSITION=UDim2.fromScale(1,0.5),ANCHOR_POINT=
Vector2.new(1,0.5)}}end function a.B()local c=a.cache.B if not c then c={c=b()}a.cache.B=c end return c.c end end do
local function b()local c,d,e,f,g,h=a.b(),a.h(),a.w(),a.B(),a.y(),{}h.__index=h function h.new(i,j,k)local l=
setmetatable({},h)l.appearance=i l.config=j l.flags=k l.enabled=false return l end function h.changeState(i,j)i.enabled=
j or not i.enabled local k=i.enabled and f.ENABLED or f.DISABLED i:applyStyle(k)i.config.callback(i.enabled)i.flags:
setFlag(i.config.flag,i.enabled)end function h.applyStyle(i,j)local k=i.appearance.thumb g.target(k.frame,e.
DAMPING_RATIO,e.FREQUENCY,{BackgroundColor3=j.THUMB})g.target(k.circle,e.DAMPING_RATIO,e.FREQUENCY,{AnchorPoint=j.
ANCHOR_POINT,Position=j.POSITION,BackgroundColor3=j.CIRCLE})end return h end function a.C()local c=a.cache.C if not c
then c={c=b()}a.cache.C=c end return c.c end end do local function b()local c,d,e=a.f(),{},{}e.__index=e function e.new(
)local f=setmetatable({},e)f.connection=nil return f end function e.isConnected(f)if not f.connection then return false
end return f.connection.Connected end function e.connect(f,g,h)if f.connection then return end local i=g:Connect(h)f.
connection=i table.insert(d,i)end function e.disconnect(f)if not f.connection then return end local g=table.find(d,f.
connection)if g then f.connection:Disconnect()f.connection=nil table.remove(d,g)end end function e.clear()for f,g in d
do g:Disconnect()d[f]=nil end end return e end function a.D()local c=a.cache.D if not c then c={c=b()}a.cache.D=c end
return c.c end end do local function b()local c,d,e,f,g=game:GetService'TextService',a.w(),a.c(),16,Enum.Font.
GothamMedium local function h(i,j,k)local l=Vector2.new(j,k)local m=c:GetTextSize(i,f,g,l)return UDim2.fromOffset(m.X,m.
Y)end local function i(j,k)if k=='X'then return j.X.Offset end return j.Y.Offset end local function j(k,l,m,n)local o,p=
m*2,0 for q,r in k:GetChildren()do if not r:IsA'GuiObject'then continue end o+=i(r.Size,l)p+=1 if p>1 then o+=n end end
return o end local function k(l)local m,n=l.component,l.description local o=h(n.text.Text,n.frame.AbsoluteSize.X,math.
huge)n.text.Size=o n.frame.Size=UDim2.new(1,0,0,o.Y.Offset)local p=j(m,'Y',d.PADDING,d.GAP)m.Size=UDim2.new(1,0,0,p)end
return{getTextSize=h,getComponentSize=j,scaleComponent=k}end function a.E()local c=a.cache.E if not c then c={c=b()}a.
cache.E=c end return c.c end end do local function b()local c,d,e,f,g,h,i,j,k=game:GetService'UserInputService',a.b(),a.
g(),a.D(),a.E(),Enum.UserInputState.End,Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseMovement,{}k.__index=k
function k.new(l,m,n)local o=setmetatable({},k)o.appearance=l o.config=m o.flags=n o.value=0 o.dragging=false o.
startInput=nil o.inputChanged=f.new()return o end function k.changeValue(l,m,n)local o,p=math.clamp(m,l.config.min,l.
config.max),l.config.max-l.config.min local q=o-l.config.min local r=q/p if n and l.value==o then return end l.
appearance.value.Text=tostring(o)l.value=o l:applyTrack(r)if l.config.callback then l.config.callback(o)end l.flags:
setFlag(l.config.flag,o)end function k.resetState(l)l.dragging=false l.startInput=nil if l.inputChanged:isConnected()
then l.inputChanged:disconnect()end end function k.onInputBegan(l,m)if m.UserInputType~=i then return end l.dragging=
true l.startInput=m l.inputChanged:connect(c.InputChanged,function(n)l:onInputChanged(n)end)end function k.
onInputChanged(l,m)if not l.dragging or not l.startInput then return end if m.UserInputState==h or l.startInput.
UserInputState==h then l:resetState()return end if m.UserInputType==j then l:updateFromInput(m)end end function k.
onInputEnded(l,m)if m.UserInputType==i then l:resetState()end end function k.updateFromInput(l,m)local n=l.appearance.
track local o=m.Position.X-n.frame.AbsolutePosition.X local p,q=math.clamp(o/n.frame.AbsoluteSize.X,0,1),l.config.max-l.
config.min local r=l.config.min+p*q local s=math.round(r*l.config.division)/l.config.division l:changeValue(s,true)end
function k.applyTrack(l,m)local n=l.appearance.track.circle.AbsoluteSize.X local o=n/2-n*m l.appearance.track.fill.Size=
UDim2.new(m,o,1,0)end return k end function a.F()local c=a.cache.F if not c then c={c=b()}a.cache.F=c end return c.c end
end do local function b()return{container=a.v(),tab=a.z(),button=a.A(),switch=a.C(),slider=a.F()}end function a.G()local
c=a.cache.G if not c then c={c=b()}a.cache.G=c end return c.c end end do local function b()local c,d=a.D(),a.a()return
function(e,f,g)local h,i,j,k,l=e.header,c.new(),c.new(),c.new(),c.new()i:connect(h.minimize.MouseButton1Click,function()
f:minimize()end)j:connect(h.fullscreen.MouseButton1Click,function()f:fullscreen()end)k:connect(h.close.MouseButton1Click
,function()f:destroy()end)l:connect(e.root.screen.AncestryChanged,function()c.clear()if g then g()end end)end end
function a.H()local c=a.cache.H if not c then c={c=b()}a.cache.H=c end return c.c end end do local function b()local c,d
,e=a.x(),a.i(),a.D()return function(f,g)local h,i,j,k=f.component,e.new(),e.new(),e.new()i:connect(h.MouseButton1Click,
function()g:select()end)j:connect(h.MouseEnter,function()if not g.selected then g:applyStyle(c.HOVERED)end end)k:
connect(h.MouseLeave,function()if not g.selected then g:applyStyle(c.DEFAULT)end end)end end function a.I()local c=a.
cache.I if not c then c={c=b()}a.cache.I=c end return c.c end end do local function b()return{DEFAULT={BUTTON=Color3.
fromRGB(16,16,16)},HOVERED={BUTTON=Color3.fromRGB(22,22,22)}}end function a.J()local c=a.cache.J if not c then c={c=b()}
a.cache.J=c end return c.c end end do local function b()local c,d,e=a.J(),a.d(),a.D()return function(f,g)local h,i,j,k=f
.component,e.new(),e.new(),e.new()i:connect(h.MouseButton1Click,function()g:activate()end)j:connect(h.MouseEnter,
function()g:applyStyle(c.HOVERED)end)k:connect(h.MouseLeave,function()g:applyStyle(c.DEFAULT)end)end end function a.K()
local c=a.cache.K if not c then c={c=b()}a.cache.K=c end return c.c end end do local function b()local c,d=a.D(),a.h()
return function(e,f)local g=c.new()g:connect(e.component.MouseButton1Click,function()f:changeState()end)end end function
a.L()local c=a.cache.L if not c then c={c=b()}a.cache.L=c end return c.c end end do local function b()local c,d=a.D(),a.
g()return function(e,f)local g,h=c.new(),c.new()g:connect(e.track.hitbox.InputBegan,function(i)f:onInputBegan(i)end)h:
connect(e.track.hitbox.InputEnded,function(i)f:onInputEnded(i)end)end end function a.M()local c=a.cache.M if not c then
c={c=b()}a.cache.M=c end return c.c end end do local function b()return{container=a.H(),tab=a.I(),button=a.K(),switch=a.
L(),slider=a.M()}end function a.N()local c=a.cache.N if not c then c={c=b()}a.cache.N=c end return c.c end end do
local function b()local c,d,e,f,g=a.a(),a.u(),a.G(),a.N(),{}g.__index=g function g.new(h)local i=setmetatable({},g)i.
appearance=d.container()i.controller=e.container.new(i.appearance)f.container(i.appearance,i.controller,h)return i end
return g end function a.O()local c=a.cache.O if not c then c={c=b()}a.cache.O=c end return c.c end end do local function
b()local c,d,e,f,g,h=a.d(),a.u(),a.G(),a.N(),a.E(),{}h.__index=h function h.new(i,j)local k=setmetatable({},h)k.
appearance=d.button(i,j)k.controller=e.button.new(k.appearance,i)f.button(k.appearance,k.controller)g.scaleComponent(k.
appearance)return k end return h end function a.P()local c=a.cache.P if not c then c={c=b()}a.cache.P=c end return c.c
end end do local function b()local c,d,e=a.e(),a.u(),{}e.__index=e function e.new(f,g)local h=setmetatable({},e)h.
appearance=d.label(f,g)return h end return e end function a.Q()local c=a.cache.Q if not c then c={c=b()}a.cache.Q=c end
return c.c end end do local function b()local c,d,e,f,g,h,i=a.b(),a.g(),a.u(),a.G(),a.N(),a.E(),{}i.__index=i function i
.new(j,k,l)local m=setmetatable({},i)m.appearance=e.slider(j,k)m.controller=f.slider.new(m.appearance,j,l)g.slider(m.
appearance,m.controller)h.scaleComponent(m.appearance)local n=l:getFlag(j.flag,'number')local o=if n~=nil then n else j.
value m.controller:changeValue(o,false)return m end function i.changeValue(j,k)j.controller:changeValue(k,false)end
return i end function a.R()local c=a.cache.R if not c then c={c=b()}a.cache.R=c end return c.c end end do local function
b()local c,d,e,f,g,h,i=a.b(),a.h(),a.u(),a.G(),a.N(),a.E(),{}i.__index=i function i.new(j,k,l)local m=setmetatable({},i)
m.appearance=e.switch(j,k)m.controller=f.switch.new(m.appearance,j,l)g.switch(m.appearance,m.controller)h.
scaleComponent(m.appearance)local n=l:getFlag(j.flag,'boolean')local o=if n~=nil then n else j.enabled if o then m.
controller:changeState(o)end return m end function i.changeState(j,k)j.controller:changeState(k)end return i end
function a.S()local c=a.cache.S if not c then c={c=b()}a.cache.S=c end return c.c end end do local function b()local c,d
,e,f,g,h,i,j,k,l,m,n,o,p=a.d(),a.a(),a.b(),a.g(),a.h(),a.i(),a.P(),a.Q(),a.R(),a.S(),a.u(),a.G(),a.N(),{}p.__index=p
function p.new(q,r,s,t)local u,v=setmetatable({},p),r.appearance.group u.appearance=m.tab(q,v.tabs)u.controller=n.tab.
new(u.appearance,t)u.section=m.section(v.sections)u.flags=s o.tab(u.appearance,u.controller)return u end function p.
select(q)q.controller:select()end function p.createLabel(q,r)return j.new(r,q.section)end function p.createButton(q,r)
return i.new(r,q.section)end function p.createSwitch(q,r)return l.new(r,q.section,q.flags)end function p.createSlider(q,
r)return k.new(r,q.section,q.flags)end return p end function a.T()local c=a.cache.T if not c then c={c=b()}a.cache.T=c
end return c.c end end do local function b()local c=game:GetService'HttpService'local function d(e)if not isfolder(e)
then makefolder(e)end end function getContent(e)if not isfile(e)then return{}end local f=readfile(e)local g,h=pcall(
function()return c:JSONDecode(f)end)if not g then return{}end return h end local function e(f,g)local h,i=pcall(function
()return c:JSONEncode(g)end)if h then writefile(f,i)end end return{ensureFolderExists=d,getContent=getContent,writeData=
e}end function a.U()local c=a.cache.U if not c then c={c=b()}a.cache.U=c end return c.c end end do local function b()
local c,d,e=a.U(),a.b(),'illumina'local f,g,h=string.format('%s/products',tostring(e)),'json',{}h.__index=h function h.
new(i)local j=string.format('%s/%s.%s',tostring(f),tostring(i),tostring(g))c.ensureFolderExists(e)local k=setmetatable({
},h)k.path=j k.flags=c.getContent(j)return k end function h.getFlag(i,j,k)local l=i.flags[j]if l~=nil and typeof(l)==k
or not k then return l end return nil end function h.setFlag(i,j,k)i.flags[j]=k c.writeData(i.path,i.flags)end return h
end function a.V()local c=a.cache.V if not c then c={c=b()}a.cache.V=c end return c.c end end end local b,c,d,e,f,g=a.j(
),a.i(),a.O(),a.T(),a.V(),{}g.__index=g function g.new(h)local i=setmetatable({},g)i.container=d.new(h.onDestroyed)i.
flags=f.new(h.product)i.tabs={}return i end function g.createTab(h,i)local j=e.new(i,h.container,h.flags,h.tabs)table.
insert(h.tabs,j)if#h.tabs==1 then j:select()end return j end return g