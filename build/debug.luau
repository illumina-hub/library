type Root__DARKLUA_TYPE_a = {screen: ScreenGui, container: Frame}
type Header__DARKLUA_TYPE_b = {header: Frame, minimize: TextButton, fullscreen: TextButton, close: TextButton}
type Group__DARKLUA_TYPE_c = {tabs: ScrollingFrame, sections: Frame}
type Appearance__DARKLUA_TYPE_d = {root: Root__DARKLUA_TYPE_a, header: Header__DARKLUA_TYPE_b, group: Group__DARKLUA_TYPE_c}
type Controller__DARKLUA_TYPE_e = {appearance: Appearance__DARKLUA_TYPE_d, minimize: (self:Controller__DARKLUA_TYPE_e) -> (), fullscreen: (self:Controller__DARKLUA_TYPE_e) -> (), destroy: (self:Controller__DARKLUA_TYPE_e) -> ()}
type Container__DARKLUA_TYPE_f = {appearance: Appearance__DARKLUA_TYPE_d, controller: Controller__DARKLUA_TYPE_e}
type Flags__DARKLUA_TYPE_g = {path: string, flags: {[string]: any}, getFlag: (self:Flags__DARKLUA_TYPE_g, name:string, defaultType:string) -> any, setFlag: (self:Flags__DARKLUA_TYPE_g, name:string, value:any) -> ()}
type Config__DARKLUA_TYPE_h = {title: string, description: string, callback: () -> ()}
type Appearance__DARKLUA_TYPE_i = {button: TextButton, title: TextLabel, description: {frame: Frame, text: TextLabel}}
type Style__DARKLUA_TYPE_j = {BUTTON: Color3}
type Controller__DARKLUA_TYPE_k = {appearance: Appearance__DARKLUA_TYPE_i, config: Config__DARKLUA_TYPE_h, activate: (self:Controller__DARKLUA_TYPE_k) -> (), applySize: (self:Controller__DARKLUA_TYPE_k) -> (), applyStyle: (self:Controller__DARKLUA_TYPE_k, style:Style__DARKLUA_TYPE_j) -> ()}
type Button__DARKLUA_TYPE_l = {appearance: Appearance__DARKLUA_TYPE_i, controller: Controller__DARKLUA_TYPE_k}
type Label__DARKLUA_TYPE_m = {appearance: string}
type Signal__DARKLUA_TYPE_n = {connection: RBXScriptConnection?, isConnected: (self:Signal__DARKLUA_TYPE_n) -> boolean, connect: (self:Signal__DARKLUA_TYPE_n, signal:RBXScriptSignal, callback:(...any) -> ...any) -> (), disconnect: (self:Signal__DARKLUA_TYPE_n) -> (), clear: () -> ()}
type Config__DARKLUA_TYPE_o = {flag: string, title: string, description: string, division: number, value: number, max: number, min: number, callback: (value:number) -> ()}
type Appearance__DARKLUA_TYPE_p = {slider: Frame, title: TextLabel, value: TextLabel, track: {frame: Frame, fill: Frame, circle: Frame, hitbox: TextButton}, description: {frame: Frame, text: TextLabel}}
type Style__DARKLUA_TYPE_q = {}
type Controller__DARKLUA_TYPE_r = {appearance: Appearance__DARKLUA_TYPE_p, config: Config__DARKLUA_TYPE_o, flags: Flags__DARKLUA_TYPE_g, value: number, dragging: boolean, startInput: InputObject?, inputChanged: Signal__DARKLUA_TYPE_n, changeValue: (self:Controller__DARKLUA_TYPE_r, value:number, difference:boolean) -> (), resetState: (self:Controller__DARKLUA_TYPE_r) -> (), onInputBegan: (self:Controller__DARKLUA_TYPE_r, input:InputObject) -> (), onInputChange: (self:Controller__DARKLUA_TYPE_r, input:InputObject) -> (), onInputEnd: (self:Controller__DARKLUA_TYPE_r, input:InputObject) -> (), updateFromInput: (self:Controller__DARKLUA_TYPE_r, input:InputObject) -> (), applyTrack: (self:Controller__DARKLUA_TYPE_r, percentage:number) -> (), applySize: (self:Controller__DARKLUA_TYPE_r) -> ()}
type Slider__DARKLUA_TYPE_s = {appearance: Appearance__DARKLUA_TYPE_p, controller: Controller__DARKLUA_TYPE_r, changeValue: (self:Slider__DARKLUA_TYPE_s, value:number) -> ()}
type Config__DARKLUA_TYPE_t = {flag: string, title: string, description: string, enabled: boolean?, callback: (state:boolean) -> ()}
type Appearance__DARKLUA_TYPE_u = {switch: TextButton, title: TextLabel, thumb: {frame: Frame, circle: Frame}, description: {frame: Frame, text: TextLabel}}
type Style__DARKLUA_TYPE_v = {THUMB: Color3, CIRCLE: Color3, POSITION: UDim2, ANCHOR_POINT: Vector2}
type Controller__DARKLUA_TYPE_w = {appearance: Appearance__DARKLUA_TYPE_u, config: Config__DARKLUA_TYPE_t, flags: Flags__DARKLUA_TYPE_g, enabled: boolean, changeState: (self:Controller__DARKLUA_TYPE_w, state:boolean?) -> (), applySize: (self:Controller__DARKLUA_TYPE_w) -> (), applyStyle: (self:Controller__DARKLUA_TYPE_w, style:Style__DARKLUA_TYPE_v) -> ()}
type Switch__DARKLUA_TYPE_x = {appearance: Appearance__DARKLUA_TYPE_u, controller: Controller__DARKLUA_TYPE_w, changeState: (self:Switch__DARKLUA_TYPE_x, state:boolean) -> ()}
type Config__DARKLUA_TYPE_y = {title: string, icon: string?}
type Appearance__DARKLUA_TYPE_z = {tab: TextButton, stroke: UIStroke, title: TextLabel, icon: ImageLabel}
type Style__DARKLUA_TYPE_A = {TAB: number, STROKE: number, ICON: Color3, TITTLE: Color3}
type Controller__DARKLUA_TYPE_B = {appearance: Appearance__DARKLUA_TYPE_z, tabs: {Tab__DARKLUA_TYPE_C}, selected: boolean, select: (self:Controller__DARKLUA_TYPE_B) -> (), applyStyle: (self:Controller__DARKLUA_TYPE_B, style:Style__DARKLUA_TYPE_A) -> ()}
type Tab__DARKLUA_TYPE_C = {appearance: Appearance__DARKLUA_TYPE_z, controller: Controller__DARKLUA_TYPE_B, section: ScrollingFrame, flags: Flags__DARKLUA_TYPE_g, select: (self:Tab__DARKLUA_TYPE_C) -> (), createLabel: (self:Tab__DARKLUA_TYPE_C, title:string) -> Label__DARKLUA_TYPE_m, createButton: (self:Tab__DARKLUA_TYPE_C, config:Config__DARKLUA_TYPE_h) -> Button__DARKLUA_TYPE_l, createSwitch: (self:Tab__DARKLUA_TYPE_C, config:Config__DARKLUA_TYPE_t) -> Switch__DARKLUA_TYPE_x, createSlider: (self:Tab__DARKLUA_TYPE_C, config:Config__DARKLUA_TYPE_o) -> Slider__DARKLUA_TYPE_s}
type Config__DARKLUA_TYPE_D = {product: string, onDestroyed: (() -> ())?}
type Library__DARKLUA_TYPE_E = {container: Container__DARKLUA_TYPE_f, flags: Flags__DARKLUA_TYPE_g, tabs: {Tab__DARKLUA_TYPE_C}, createTab: (self:Library__DARKLUA_TYPE_E, config:Config__DARKLUA_TYPE_y) -> Tab__DARKLUA_TYPE_C}
type TypeMetadata__DARKLUA_TYPE_F<T> = {springType: (dampingRatio:number, frequency:number, pos:number, typedat:TypeMetadata__DARKLUA_TYPE_F<T>, rawTarget:T) -> LinearSpring__DARKLUA_TYPE_G<T>, toIntermediate: (T) -> {number}, fromIntermediate: ({number}) -> T}
type LinearSpring__DARKLUA_TYPE_G<T> = {d: number, f: number, g: {number}, p: {number}, v: {number}, typedat: TypeMetadata__DARKLUA_TYPE_F<T>, rawTarget: T, setGoal: (self:LinearSpring__DARKLUA_TYPE_G<T>, goal:T) -> (), setDampingRatio: (self:LinearSpring__DARKLUA_TYPE_G<T>, dampingRatio:number) -> (), setFrequency: (self:LinearSpring__DARKLUA_TYPE_G<T>, frequency:number) -> (), canSleep: (self:LinearSpring__DARKLUA_TYPE_G<T>) -> boolean, step: (self:LinearSpring__DARKLUA_TYPE_G<T>, dt:number) -> T}
type RotationSpring__DARKLUA_TYPE_H = {d: number, f: number, g: CFrame, p: CFrame, v: Vector3, setGoal: (self:RotationSpring__DARKLUA_TYPE_H, value:CFrame) -> (), setDampingRatio: (self:RotationSpring__DARKLUA_TYPE_H, dampingRatio:number) -> (), setFrequency: (self:RotationSpring__DARKLUA_TYPE_H, frequency:number) -> (), step: (self:RotationSpring__DARKLUA_TYPE_H, dt:number) -> CFrame}
type PropertyOverride__DARKLUA_TYPE_I = {[string]: {class: string, get: (any) -> (), set: (any, any) -> ()}}

local __DARKLUA_BUNDLE_MODULES = {
    cache = {}::any,
}

do
    do
        local function __modImpl()
            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.a(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.a

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.a = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.b(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.b

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.b = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.c(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.c

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.c = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.d(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.d

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.d = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.e(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.e

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.e = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.e()

            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.f(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.f

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.f = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.b()

            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.g(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.g

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.g = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.c()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.d()
            __DARKLUA_BUNDLE_MODULES.f()
            __DARKLUA_BUNDLE_MODULES.g()

            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.h(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.h

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.h = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.a()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.h()

            return nil
        end

        function __DARKLUA_BUNDLE_MODULES.i(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.i

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.i = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(container: Frame)
                local group = Instance.new('Frame')

                group.Name = 'Group'
                group.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                group.BackgroundTransparency = 1
                group.BorderColor3 = Color3.fromRGB(0, 0, 0)
                group.BorderSizePixel = 0
                group.LayoutOrder = 2
                group.Size = UDim2.new(1, 0, 1, -51)

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout.Parent = group

                local tabs = Instance.new('ScrollingFrame')

                tabs.Name = 'Tabs'
                tabs.Active = true
                tabs.AutomaticCanvasSize = Enum.AutomaticSize.Y
                tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                tabs.BackgroundTransparency = 1
                tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
                tabs.BorderSizePixel = 0
                tabs.CanvasSize = UDim2.fromScale(0, 0.5)
                tabs.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
                tabs.ScrollBarImageTransparency = 1
                tabs.ScrollBarThickness = 0
                tabs.ScrollingDirection = Enum.ScrollingDirection.Y
                tabs.Size = UDim2.new(0, 200, 1, 0)

                local uIListLayout1 = Instance.new('UIListLayout')

                uIListLayout1.Name = 'UIListLayout'
                uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout1.Padding = UDim.new(0, 10)
                uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout1.Parent = tabs

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 15)
                uIPadding.PaddingLeft = UDim.new(0, 15)
                uIPadding.PaddingRight = UDim.new(0, 15)
                uIPadding.PaddingTop = UDim.new(0, 15)
                uIPadding.Parent = tabs
                tabs.Parent = group

                local divider = Instance.new('Frame')

                divider.Name = 'Divider'
                divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                divider.BorderSizePixel = 0
                divider.LayoutOrder = 1
                divider.Size = UDim2.new(0, 1, 1, 0)
                divider.Parent = group

                local sections = Instance.new('Frame')

                sections.Name = 'Sections'
                sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                sections.BackgroundTransparency = 1
                sections.BorderColor3 = Color3.fromRGB(0, 0, 0)
                sections.BorderSizePixel = 0
                sections.LayoutOrder = 2
                sections.Size = UDim2.new(1, -201, 1, 0)
                sections.Parent = group
                group.Parent = container

                return {
                    tabs = tabs,
                    sections = sections,
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.j(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.j

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.j = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(container: Frame)
                local header = Instance.new('Frame')

                header.Name = 'Header'
                header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                header.BackgroundTransparency = 1
                header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                header.BorderSizePixel = 0
                header.Size = UDim2.new(1, 0, 0, 50)

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout.Parent = header

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 15)
                uIPadding.PaddingLeft = UDim.new(0, 15)
                uIPadding.PaddingRight = UDim.new(0, 15)
                uIPadding.PaddingTop = UDim.new(0, 15)
                uIPadding.Parent = header

                local title = Instance.new('TextLabel')

                title.Name = 'Title'
                title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                title.BackgroundTransparency = 1
                title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                title.BorderSizePixel = 0
                title.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                title.Size = UDim2.new(1, -110, 1, 0)
                title.Text = 'Illumina'
                title.TextColor3 = Color3.fromRGB(207, 207, 207)
                title.TextSize = 16
                title.TextXAlignment = Enum.TextXAlignment.Left
                title.Parent = header

                local close = Instance.new('TextButton')

                close.Name = 'Close'
                close.AutoButtonColor = false
                close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                close.BackgroundTransparency = 1
                close.BorderColor3 = Color3.fromRGB(0, 0, 0)
                close.BorderSizePixel = 0
                close.LayoutOrder = 3
                close.Size = UDim2.fromOffset(40, 40)
                close.Text = ''
                close.TextColor3 = Color3.fromRGB(0, 0, 0)
                close.TextSize = 14

                local icon = Instance.new('ImageLabel')

                icon.Name = 'Icon'
                icon.AnchorPoint = Vector2.new(0.5, 0.5)
                icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                icon.BackgroundTransparency = 1
                icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
                icon.BorderSizePixel = 0
                icon.Image = 'rbxassetid://74451597845240'
                icon.ImageColor3 = Color3.fromRGB(207, 207, 207)
                icon.Position = UDim2.fromScale(0.5, 0.5)
                icon.Size = UDim2.fromOffset(20, 20)
                icon.Parent = close
                close.Parent = header

                local fullscreen = Instance.new('TextButton')

                fullscreen.Name = 'Fullscreen'
                fullscreen.AutoButtonColor = false
                fullscreen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                fullscreen.BackgroundTransparency = 1
                fullscreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
                fullscreen.BorderSizePixel = 0
                fullscreen.LayoutOrder = 2
                fullscreen.Size = UDim2.fromOffset(40, 40)
                fullscreen.Text = ''
                fullscreen.TextColor3 = Color3.fromRGB(0, 0, 0)
                fullscreen.TextSize = 14

                local icon1 = Instance.new('ImageLabel')

                icon1.Name = 'Icon'
                icon1.AnchorPoint = Vector2.new(0.5, 0.5)
                icon1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                icon1.BackgroundTransparency = 1
                icon1.BorderColor3 = Color3.fromRGB(0, 0, 0)
                icon1.BorderSizePixel = 0
                icon1.Image = 'rbxassetid://92682004738840'
                icon1.ImageColor3 = Color3.fromRGB(207, 207, 207)
                icon1.Position = UDim2.fromScale(0.5, 0.5)
                icon1.Size = UDim2.fromOffset(20, 20)
                icon1.Parent = fullscreen
                fullscreen.Parent = header

                local minimize = Instance.new('TextButton')

                minimize.Name = 'Minimize'
                minimize.AutoButtonColor = false
                minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                minimize.BackgroundTransparency = 1
                minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
                minimize.BorderSizePixel = 0
                minimize.LayoutOrder = 1
                minimize.Size = UDim2.fromOffset(40, 40)
                minimize.Text = ''
                minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
                minimize.TextSize = 14

                local icon2 = Instance.new('ImageLabel')

                icon2.Name = 'Icon'
                icon2.AnchorPoint = Vector2.new(0.5, 0.5)
                icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                icon2.BackgroundTransparency = 1
                icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                icon2.BorderSizePixel = 0
                icon2.Image = 'rbxassetid://83770212086491'
                icon2.ImageColor3 = Color3.fromRGB(207, 207, 207)
                icon2.Position = UDim2.fromScale(0.5, 0.5)
                icon2.Size = UDim2.fromOffset(20, 20)
                icon2.Parent = minimize
                minimize.Parent = header
                header.Parent = container

                local divider = Instance.new('Frame')

                divider.Name = 'Divider'
                divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                divider.BorderSizePixel = 0
                divider.LayoutOrder = 1
                divider.Size = UDim2.new(1, 0, 0, 1)
                divider.Parent = container

                return {
                    header = header,
                    minimize = minimize,
                    fullscreen = fullscreen,
                    close = close,
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.k(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.k

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.k = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local CoreGui = gethui() or cloneref(game:GetService('CoreGui'))

            return function()
                local oldIllumina = CoreGui:FindFirstChild('Illumina')

                if oldIllumina then
                    oldIllumina:Destroy()
                end

                local illumina = Instance.new('ScreenGui')

                illumina.Name = 'Illumina'
                illumina.IgnoreGuiInset = true
                illumina.ResetOnSpawn = false
                illumina.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

                local container = Instance.new('Frame')

                container.Name = 'Container'
                container.AnchorPoint = Vector2.new(0.5, 0.5)
                container.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                container.BorderColor3 = Color3.fromRGB(0, 0, 0)
                container.BorderSizePixel = 0
                container.Position = UDim2.fromScale(0.5, 0.5)
                container.Size = UDim2.fromOffset(750, 500)

                local uIStroke = Instance.new('UIStroke')

                uIStroke.Name = 'UIStroke'
                uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uIStroke.Color = Color3.fromRGB(47, 47, 47)
                uIStroke.Parent = container

                local uICorner = Instance.new('UICorner')

                uICorner.Name = 'UICorner'
                uICorner.CornerRadius = UDim.new(0, 10)
                uICorner.Parent = container

                local uICorner1 = Instance.new('UICorner')

                uICorner1.Name = 'UICorner'
                uICorner1.CornerRadius = UDim.new(0, 10)
                uICorner1.Parent = container

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.Parent = container
                container.Parent = illumina
                illumina.Parent = CoreGui

                return {
                    screen = illumina,
                    container = container,
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.l(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.l

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.l = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local createGroup = __DARKLUA_BUNDLE_MODULES.j()
            local createHeader = __DARKLUA_BUNDLE_MODULES.k()
            local createRoot = __DARKLUA_BUNDLE_MODULES.l()

            return function()
                local root = createRoot()
                local header = createHeader(root.container)
                local group = createGroup(root.container)

                return {
                    root = root,
                    header = header,
                    group = group,
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.m(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.m

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.m = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.h()

            local DEFAULT_ICON = 'rbxassetid://73851699179305'

            return function(config: Config__DARKLUA_TYPE_y, tabs: ScrollingFrame)
                local tab = Instance.new('TextButton')

                tab.Name = 'Tab'
                tab.AutoButtonColor = false
                tab.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
                tab.BackgroundTransparency = 1
                tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
                tab.BorderSizePixel = 0
                tab.Size = UDim2.new(1, 0, 0, 50)
                tab.Text = ''
                tab.TextColor3 = Color3.fromRGB(0, 0, 0)
                tab.TextSize = 14

                local uICorner = Instance.new('UICorner')

                uICorner.Name = 'UICorner'
                uICorner.CornerRadius = UDim.new(0, 5)
                uICorner.Parent = tab

                local uIStroke = Instance.new('UIStroke')

                uIStroke.Name = 'UIStroke'
                uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uIStroke.Color = Color3.fromRGB(47, 47, 47)
                uIStroke.Transparency = 1
                uIStroke.Parent = tab

                local title = Instance.new('TextLabel')

                title.Name = 'Title'
                title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                title.BackgroundTransparency = 1
                title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                title.BorderSizePixel = 0
                title.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                title.LayoutOrder = 1
                title.Size = UDim2.new(1, -30, 1, 0)
                title.Text = config.title
                title.TextColor3 = Color3.fromRGB(89, 89, 89)
                title.TextSize = 16
                title.TextTruncate = Enum.TextTruncate.SplitWord
                title.TextXAlignment = Enum.TextXAlignment.Left
                title.Parent = tab

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 15)
                uIPadding.PaddingLeft = UDim.new(0, 15)
                uIPadding.PaddingRight = UDim.new(0, 15)
                uIPadding.PaddingTop = UDim.new(0, 15)
                uIPadding.Parent = tab

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout.Padding = UDim.new(0, 10)
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout.Parent = tab

                local icon = Instance.new('ImageLabel')

                icon.Name = 'Icon'
                icon.AnchorPoint = Vector2.new(0.5, 0.5)
                icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                icon.BackgroundTransparency = 1
                icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
                icon.BorderSizePixel = 0
                icon.Image = config.icon or DEFAULT_ICON
                icon.ImageColor3 = Color3.fromRGB(89, 89, 89)
                icon.Position = UDim2.fromScale(0.5, 0.5)
                icon.Size = UDim2.fromOffset(20, 20)
                icon.Parent = tab
                tab.Parent = tabs

                return {
                    tab = tab,
                    stroke = uIStroke,
                    title = title,
                    icon = icon,
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.n(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.n

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.n = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(sections: Frame)
                local section = Instance.new('ScrollingFrame')

                section.Name = 'Section'
                section.Active = true
                section.AnchorPoint = Vector2.new(0.5, 0.5)
                section.AutomaticCanvasSize = Enum.AutomaticSize.Y
                section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                section.BackgroundTransparency = 1
                section.BorderColor3 = Color3.fromRGB(0, 0, 0)
                section.BorderSizePixel = 0
                section.CanvasSize = UDim2.fromScale(0, 0.5)
                section.LayoutOrder = 2
                section.Position = UDim2.fromScale(0.5, 0.5)
                section.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
                section.ScrollBarImageTransparency = 1
                section.ScrollBarThickness = 0
                section.ScrollingDirection = Enum.ScrollingDirection.Y
                section.Size = UDim2.fromScale(1, 1)
                section.Visible = false

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout.Padding = UDim.new(0, 10)
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.Parent = section

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 15)
                uIPadding.PaddingLeft = UDim.new(0, 15)
                uIPadding.PaddingRight = UDim.new(0, 15)
                uIPadding.PaddingTop = UDim.new(0, 15)
                uIPadding.Parent = section
                section.Parent = sections

                return section
            end
        end

        function __DARKLUA_BUNDLE_MODULES.o(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.o

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.o = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(title: string, section: ScrollingFrame)
                local label = Instance.new('TextLabel')

                label.Name = 'Label'
                label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                label.BackgroundTransparency = 1
                label.BorderColor3 = Color3.fromRGB(0, 0, 0)
                label.BorderSizePixel = 0
                label.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                label.Size = UDim2.new(1, 0, 0, 20)
                label.Text = title
                label.TextColor3 = Color3.fromRGB(207, 207, 207)
                label.TextSize = 16
                label.TextTruncate = Enum.TextTruncate.SplitWord
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.Parent = section

                return label
            end
        end

        function __DARKLUA_BUNDLE_MODULES.p(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.p

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.p = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.c()

            return function(config: Config__DARKLUA_TYPE_h, section: ScrollingFrame)
                local button = Instance.new('TextButton')

                button.Name = 'Button'
                button.AutoButtonColor = false
                button.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
                button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                button.BorderSizePixel = 0
                button.Size = UDim2.new(1, 0, 0, 113)
                button.Text = ''
                button.TextColor3 = Color3.fromRGB(0, 0, 0)
                button.TextSize = 14

                local uICorner = Instance.new('UICorner')

                uICorner.Name = 'UICorner'
                uICorner.CornerRadius = UDim.new(0, 5)
                uICorner.Parent = button

                local content = Instance.new('Frame')

                content.Name = 'Content'
                content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                content.BackgroundTransparency = 1
                content.BorderColor3 = Color3.fromRGB(0, 0, 0)
                content.BorderSizePixel = 0
                content.Size = UDim2.new(1, 0, 0, 20)

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout.Padding = UDim.new(0, 10)
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout.Parent = content

                local icon = Instance.new('ImageLabel')

                icon.Name = 'Icon'
                icon.AnchorPoint = Vector2.new(0.5, 0.5)
                icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                icon.BackgroundTransparency = 1
                icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
                icon.BorderSizePixel = 0
                icon.Image = 'rbxassetid://118002645781070'
                icon.ImageColor3 = Color3.fromRGB(207, 207, 207)
                icon.LayoutOrder = 1
                icon.Position = UDim2.fromScale(0.5, 0.5)
                icon.Size = UDim2.fromOffset(20, 20)
                icon.Parent = content

                local title = Instance.new('TextLabel')

                title.Name = 'Title'
                title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                title.BackgroundTransparency = 1
                title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                title.BorderSizePixel = 0
                title.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                title.Size = UDim2.new(1, -30, 1, 0)
                title.Text = config.title
                title.TextColor3 = Color3.fromRGB(207, 207, 207)
                title.TextSize = 16
                title.TextTruncate = Enum.TextTruncate.SplitWord
                title.TextXAlignment = Enum.TextXAlignment.Left
                title.Parent = content
                content.Parent = button

                local uIListLayout1 = Instance.new('UIListLayout')

                uIListLayout1.Name = 'UIListLayout'
                uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout1.Padding = UDim.new(0, 15)
                uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout1.Parent = button

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 15)
                uIPadding.PaddingLeft = UDim.new(0, 15)
                uIPadding.PaddingRight = UDim.new(0, 15)
                uIPadding.PaddingTop = UDim.new(0, 15)
                uIPadding.Parent = button

                local divider = Instance.new('Frame')

                divider.Name = 'Divider'
                divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                divider.BorderSizePixel = 0
                divider.Size = UDim2.new(1, 30, 0, 1)
                divider.Parent = button

                local uIStroke = Instance.new('UIStroke')

                uIStroke.Name = 'UIStroke'
                uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uIStroke.Color = Color3.fromRGB(47, 47, 47)
                uIStroke.Parent = button

                local description = Instance.new('Frame')

                description.Name = 'Description'
                description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                description.BackgroundTransparency = 1
                description.BorderColor3 = Color3.fromRGB(0, 0, 0)
                description.BorderSizePixel = 0
                description.Size = UDim2.new(1, 0, 0, 32)

                local text = Instance.new('TextLabel')

                text.Name = 'Text'
                text.AnchorPoint = Vector2.new(0, 0.5)
                text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                text.BackgroundTransparency = 1
                text.BorderColor3 = Color3.fromRGB(0, 0, 0)
                text.BorderSizePixel = 0
                text.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                text.Position = UDim2.fromScale(0, 0.5)
                text.Size = UDim2.fromScale(1, 1)
                text.Text = config.description
                text.TextColor3 = Color3.fromRGB(89, 89, 89)
                text.TextSize = 16
                text.TextWrapped = true
                text.TextXAlignment = Enum.TextXAlignment.Left
                text.TextYAlignment = Enum.TextYAlignment.Top
                text.Parent = description
                description.Parent = button
                button.Parent = section

                return {
                    button = button,
                    title = title,
                    description = {
                        frame = description,
                        text = text,
                    },
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.q(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.q

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.q = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.g()

            return function(config: Config__DARKLUA_TYPE_t, section: ScrollingFrame)
                local switch = Instance.new('TextButton')

                switch.Name = 'Switch'
                switch.AutoButtonColor = false
                switch.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
                switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
                switch.BorderSizePixel = 0
                switch.Size = UDim2.new(1, 0, 0, 113)
                switch.Text = ''
                switch.TextColor3 = Color3.fromRGB(0, 0, 0)
                switch.TextSize = 14

                local uICorner = Instance.new('UICorner')

                uICorner.Name = 'UICorner'
                uICorner.CornerRadius = UDim.new(0, 5)
                uICorner.Parent = switch

                local content = Instance.new('Frame')

                content.Name = 'Content'
                content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                content.BackgroundTransparency = 1
                content.BorderColor3 = Color3.fromRGB(0, 0, 0)
                content.BorderSizePixel = 0
                content.Size = UDim2.new(1, 0, 0, 20)

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout.Padding = UDim.new(0, 10)
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout.Parent = content

                local title = Instance.new('TextLabel')

                title.Name = 'Title'
                title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                title.BackgroundTransparency = 1
                title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                title.BorderSizePixel = 0
                title.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                title.Size = UDim2.new(1, -50, 1, 0)
                title.Text = config.title
                title.TextColor3 = Color3.fromRGB(207, 207, 207)
                title.TextSize = 16
                title.TextTruncate = Enum.TextTruncate.SplitWord
                title.TextXAlignment = Enum.TextXAlignment.Left
                title.Parent = content

                local thumb = Instance.new('Frame')

                thumb.Name = 'Thumb'
                thumb.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                thumb.BorderColor3 = Color3.fromRGB(0, 0, 0)
                thumb.BorderSizePixel = 0
                thumb.Size = UDim2.fromOffset(40, 20)

                local uICorner1 = Instance.new('UICorner')

                uICorner1.Name = 'UICorner'
                uICorner1.CornerRadius = UDim.new(1, 0)
                uICorner1.Parent = thumb

                local circle = Instance.new('Frame')

                circle.Name = 'Circle'
                circle.AnchorPoint = Vector2.new(0, 0.5)
                circle.BackgroundColor3 = Color3.fromRGB(126, 126, 126)
                circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                circle.BorderSizePixel = 0
                circle.Position = UDim2.fromScale(0, 0.5)
                circle.Size = UDim2.fromOffset(16, 16)

                local uICorner2 = Instance.new('UICorner')

                uICorner2.Name = 'UICorner'
                uICorner2.CornerRadius = UDim.new(1, 0)
                uICorner2.Parent = circle
                circle.Parent = thumb

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 2)
                uIPadding.PaddingLeft = UDim.new(0, 2)
                uIPadding.PaddingRight = UDim.new(0, 2)
                uIPadding.PaddingTop = UDim.new(0, 2)
                uIPadding.Parent = thumb
                thumb.Parent = content
                content.Parent = switch

                local uIListLayout1 = Instance.new('UIListLayout')

                uIListLayout1.Name = 'UIListLayout'
                uIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout1.Padding = UDim.new(0, 15)
                uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout1.Parent = switch

                local uIPadding1 = Instance.new('UIPadding')

                uIPadding1.Name = 'UIPadding'
                uIPadding1.PaddingBottom = UDim.new(0, 15)
                uIPadding1.PaddingLeft = UDim.new(0, 15)
                uIPadding1.PaddingRight = UDim.new(0, 15)
                uIPadding1.PaddingTop = UDim.new(0, 15)
                uIPadding1.Parent = switch

                local uIStroke = Instance.new('UIStroke')

                uIStroke.Name = 'UIStroke'
                uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uIStroke.Color = Color3.fromRGB(47, 47, 47)
                uIStroke.Parent = switch

                local divider = Instance.new('Frame')

                divider.Name = 'Divider'
                divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                divider.BorderSizePixel = 0
                divider.Size = UDim2.new(1, 30, 0, 1)
                divider.Parent = switch

                local description = Instance.new('Frame')

                description.Name = 'Description'
                description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                description.BackgroundTransparency = 1
                description.BorderColor3 = Color3.fromRGB(0, 0, 0)
                description.BorderSizePixel = 0
                description.Size = UDim2.new(1, 0, 0, 32)

                local text = Instance.new('TextLabel')

                text.Name = 'Text'
                text.AnchorPoint = Vector2.new(0, 0.5)
                text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                text.BackgroundTransparency = 1
                text.BorderColor3 = Color3.fromRGB(0, 0, 0)
                text.BorderSizePixel = 0
                text.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                text.Position = UDim2.fromScale(0, 0.5)
                text.Size = UDim2.fromScale(1, 1)
                text.Text = config.description
                text.TextColor3 = Color3.fromRGB(89, 89, 89)
                text.TextSize = 16
                text.TextWrapped = true
                text.TextXAlignment = Enum.TextXAlignment.Left
                text.TextYAlignment = Enum.TextYAlignment.Top
                text.Parent = description
                description.Parent = switch
                switch.Parent = section

                return {
                    switch = switch,
                    title = title,
                    thumb = {
                        frame = thumb,
                        circle = circle,
                    },
                    description = {
                        frame = description,
                        text = text,
                    },
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.r(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.r

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.r = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.f()

            return function(config: Config__DARKLUA_TYPE_o, section: ScrollingFrame)
                local slider = Instance.new('Frame')

                slider.Name = 'Slider'
                slider.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
                slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                slider.BorderSizePixel = 0
                slider.Size = UDim2.new(1, 0, 0, 113)

                local uIStroke = Instance.new('UIStroke')

                uIStroke.Name = 'UIStroke'
                uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uIStroke.Color = Color3.fromRGB(47, 47, 47)
                uIStroke.Parent = slider

                local uIPadding = Instance.new('UIPadding')

                uIPadding.Name = 'UIPadding'
                uIPadding.PaddingBottom = UDim.new(0, 15)
                uIPadding.PaddingLeft = UDim.new(0, 15)
                uIPadding.PaddingRight = UDim.new(0, 15)
                uIPadding.PaddingTop = UDim.new(0, 15)
                uIPadding.Parent = slider

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout.Padding = UDim.new(0, 15)
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.Parent = slider

                local uICorner = Instance.new('UICorner')

                uICorner.Name = 'UICorner'
                uICorner.CornerRadius = UDim.new(0, 5)
                uICorner.Parent = slider

                local content = Instance.new('Frame')

                content.Name = 'Content'
                content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                content.BackgroundTransparency = 1
                content.BorderColor3 = Color3.fromRGB(0, 0, 0)
                content.BorderSizePixel = 0
                content.Size = UDim2.new(1, 0, 0, 20)

                local uIListLayout1 = Instance.new('UIListLayout')

                uIListLayout1.Name = 'UIListLayout'
                uIListLayout1.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout1.Padding = UDim.new(0, 10)
                uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout1.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout1.Parent = content

                local value = Instance.new('TextLabel')

                value.Name = 'Value'
                value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                value.BackgroundTransparency = 1
                value.BorderColor3 = Color3.fromRGB(0, 0, 0)
                value.BorderSizePixel = 0
                value.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                value.LayoutOrder = 1
                value.Size = UDim2.new(0, 19, 1, 0)
                value.Text = '75'
                value.TextColor3 = Color3.fromRGB(207, 207, 207)
                value.TextSize = 16
                value.TextXAlignment = Enum.TextXAlignment.Right
                value.Parent = content

                local track = Instance.new('Frame')

                track.Name = 'Track'
                track.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                track.BorderColor3 = Color3.fromRGB(0, 0, 0)
                track.BorderSizePixel = 0
                track.LayoutOrder = 2
                track.Size = UDim2.fromOffset(200, 6)

                local uICorner1 = Instance.new('UICorner')

                uICorner1.Name = 'UICorner'
                uICorner1.CornerRadius = UDim.new(1, 0)
                uICorner1.Parent = track

                local fill = Instance.new('Frame')

                fill.Name = 'Fill'
                fill.AnchorPoint = Vector2.new(0, 0.5)
                fill.BackgroundColor3 = Color3.fromRGB(211, 211, 211)
                fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
                fill.BorderSizePixel = 0
                fill.Position = UDim2.fromScale(0, 0.5)
                fill.Size = UDim2.fromScale(0.75, 1)

                local uICorner2 = Instance.new('UICorner')

                uICorner2.Name = 'UICorner'
                uICorner2.CornerRadius = UDim.new(1, 0)
                uICorner2.Parent = fill

                local circle = Instance.new('Frame')

                circle.Name = 'Circle'
                circle.AnchorPoint = Vector2.new(0.5, 0.5)
                circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                circle.BorderSizePixel = 0
                circle.Position = UDim2.fromScale(1, 0.5)
                circle.Size = UDim2.fromOffset(16, 16)

                local uICorner3 = Instance.new('UICorner')

                uICorner3.Name = 'UICorner'
                uICorner3.CornerRadius = UDim.new(1, 0)
                uICorner3.Parent = circle
                circle.Parent = fill
                fill.Parent = track

                local hitbox = Instance.new('TextButton')

                hitbox.Name = 'Hitbox'
                hitbox.AnchorPoint = Vector2.new(0.5, 0.5)
                hitbox.AutoButtonColor = false
                hitbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                hitbox.BackgroundTransparency = 1
                hitbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
                hitbox.BorderSizePixel = 0
                hitbox.Position = UDim2.fromScale(0.5, 0.5)
                hitbox.Size = UDim2.new(1, 0, 1, 20)
                hitbox.Text = ''
                hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
                hitbox.TextSize = 14
                hitbox.Parent = track
                track.Parent = content

                local title = Instance.new('TextLabel')

                title.Name = 'Title'
                title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                title.BackgroundTransparency = 1
                title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                title.BorderSizePixel = 0
                title.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                title.Size = UDim2.new(1, -239, 1, 0)
                title.Text = config.title
                title.TextColor3 = Color3.fromRGB(207, 207, 207)
                title.TextSize = 16
                title.TextTruncate = Enum.TextTruncate.SplitWord
                title.TextXAlignment = Enum.TextXAlignment.Left
                title.Parent = content
                content.Parent = slider

                local divider = Instance.new('Frame')

                divider.Name = 'Divider'
                divider.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
                divider.BorderSizePixel = 0
                divider.Size = UDim2.new(1, 30, 0, 1)
                divider.Parent = slider

                local description = Instance.new('Frame')

                description.Name = 'Description'
                description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                description.BackgroundTransparency = 1
                description.BorderColor3 = Color3.fromRGB(0, 0, 0)
                description.BorderSizePixel = 0
                description.Size = UDim2.new(1, 0, 0, 32)

                local text = Instance.new('TextLabel')

                text.Name = 'Text'
                text.AnchorPoint = Vector2.new(0, 0.5)
                text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                text.BackgroundTransparency = 1
                text.BorderColor3 = Color3.fromRGB(0, 0, 0)
                text.BorderSizePixel = 0
                text.FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
                text.Position = UDim2.fromScale(0, 0.5)
                text.Size = UDim2.fromScale(1, 1)
                text.Text = config.description
                text.TextColor3 = Color3.fromRGB(89, 89, 89)
                text.TextSize = 16
                text.TextWrapped = true
                text.TextXAlignment = Enum.TextXAlignment.Left
                text.TextYAlignment = Enum.TextYAlignment.Top
                text.Parent = description
                description.Parent = slider
                slider.Parent = section

                return {
                    slider = slider,
                    title = title,
                    value = value,
                    track = {
                        frame = track,
                        fill = fill,
                        circle = circle,
                        hitbox = hitbox,
                    },
                    description = {
                        frame = description,
                        text = text,
                    },
                }
            end
        end

        function __DARKLUA_BUNDLE_MODULES.s(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.s

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.s = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                container = __DARKLUA_BUNDLE_MODULES.m(),
                tab = __DARKLUA_BUNDLE_MODULES.n(),
                section = __DARKLUA_BUNDLE_MODULES.o(),
                label = __DARKLUA_BUNDLE_MODULES.p(),
                button = __DARKLUA_BUNDLE_MODULES.q(),
                switch = __DARKLUA_BUNDLE_MODULES.r(),
                slider = __DARKLUA_BUNDLE_MODULES.s(),
            }
        end

        function __DARKLUA_BUNDLE_MODULES.t(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.t

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.t = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.a()

            local Container = {}

            Container.__index = Container

            function Container.new(appearance: Appearance__DARKLUA_TYPE_d): Controller__DARKLUA_TYPE_e
                local self = setmetatable({}, Container)

                self.appearance = appearance

                return self::any
            end
            function Container.minimize(self: Controller__DARKLUA_TYPE_e)
                local screen = self.appearance.root.screen

                screen.Enabled = not screen.Enabled
            end
            function Container.fullscreen(self: Controller__DARKLUA_TYPE_e) end
            function Container.destroy(self: Controller__DARKLUA_TYPE_e)
                self.appearance.root.screen:Destroy()
            end

            return Container
        end

        function __DARKLUA_BUNDLE_MODULES.u(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.u

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.u = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                PADDING = 15,
                GAP = 15,
                DAMPING_RATIO = 1,
                FREQUENCY = 6,
            }
        end

        function __DARKLUA_BUNDLE_MODULES.v(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.v

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.v = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                DEFAULT = {
                    TAB = 1,
                    STROKE = 1,
                    ICON = Color3.fromRGB(89, 89, 89),
                    TITTLE = Color3.fromRGB(89, 89, 89),
                },
                HOVERED = {
                    TAB = 1,
                    STROKE = 1,
                    ICON = Color3.fromRGB(157, 157, 157),
                    TITTLE = Color3.fromRGB(157, 157, 157),
                },
                SELECTED = {
                    TAB = 0,
                    STROKE = 0,
                    ICON = Color3.fromRGB(207, 207, 207),
                    TITTLE = Color3.fromRGB(207, 207, 207),
                },
            }
        end

        function __DARKLUA_BUNDLE_MODULES.w(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.w

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.w = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local STRICT_RUNTIME_TYPES = true
            local SLEEP_OFFSET_SQ_LIMIT = (1 / 3840) ^ 2
            local SLEEP_VELOCITY_SQ_LIMIT = 1e-2 ^ 2
            local SLEEP_ROTATION_DIFF = math.rad(0.01)
            local SLEEP_ROTATION_VELOCITY = math.rad(0.1)
            local EPS = 1e-5
            local RunService = game:GetService('RunService')
            local pi = math.pi
            local exp = math.exp
            local sin = math.sin
            local cos = math.cos
            local min = math.min
            local max = math.max
            local sqrt = math.sqrt
            local atan2 = math.atan2
            local round = math.round

            local function magnitudeSq(vec: {number})
                local out = 0

                for _, v in vec do
                    out += v ^ 2
                end

                return out
            end
            local function distanceSq(vec0: {number}, vec1: {number})
                local out = 0

                for i0, v0 in vec0 do
                    out += (vec1[i0] - v0) ^ 2
                end

                return out
            end

            local LinearSpring = {}

            do
                LinearSpring.__index = LinearSpring

                function LinearSpring.new<T>(
                    dampingRatio: number,
                    frequency: number,
                    pos: T,
                    rawGoal: T,
                    typedat
                )
                    local linearPos = typedat.toIntermediate(pos)

                    return setmetatable({
                        d = dampingRatio,
                        f = frequency,
                        g = linearPos,
                        p = linearPos,
                        v = table.create(#linearPos, 0),
                        typedat = typedat,
                        rawGoal = rawGoal,
                    }, LinearSpring)
                end
                function LinearSpring.setGoal<T>(self, goal: T)
                    self.rawGoal = goal
                    self.g = self.typedat.toIntermediate(goal)
                end
                function LinearSpring.setDampingRatio<T>(
                    self: LinearSpring__DARKLUA_TYPE_G<T>,
                    dampingRatio: number
                )
                    self.d = dampingRatio
                end
                function LinearSpring.setFrequency<T>(
                    self: LinearSpring__DARKLUA_TYPE_G<T>,
                    frequency: number
                )
                    self.f = frequency
                end
                function LinearSpring.canSleep<T>(self)
                    if magnitudeSq(self.v) > SLEEP_VELOCITY_SQ_LIMIT then
                        return false
                    end
                    if distanceSq(self.p, self.g) > SLEEP_OFFSET_SQ_LIMIT then
                        return false
                    end

                    return true
                end
                function LinearSpring.step<T>(self: LinearSpring__DARKLUA_TYPE_G<T>, dt: number)
                    local d = self.d
                    local f = self.f * (2 * pi)
                    local g = self.g
                    local p = self.p
                    local v = self.v

                    if d == 1 then
                        local q = exp(-f * dt)
                        local w = dt * q
                        local c0 = q + w * f
                        local c2 = q - w * f
                        local c3 = w * f * f

                        for idx = 1, #p do
                            local o = p[idx] - g[idx]

                            p[idx] = o * c0 + v[idx] * w + g[idx]
                            v[idx] = v[idx] * c2 - o * c3
                        end
                    elseif d < 1 then
                        local q = exp(-d * f * dt)
                        local c = sqrt(1 - d * d)
                        local i = cos(dt * f * c)
                        local j = sin(dt * f * c)
                        local z

                        if c > EPS then
                            z = j / c
                        else
                            local a = dt * f

                            z = a + ((a * a) * (c * c) * (c * c) / 20 - c * c) * (a * a * a) / 6
                        end

                        local y

                        if f * c > EPS then
                            y = j / (f * c)
                        else
                            local b = f * c

                            y = dt + ((dt * dt) * (b * b) * (b * b) / 20 - b * b) * (dt * dt * dt) / 6
                        end

                        for idx = 1, #p do
                            local o = p[idx] - g[idx]

                            p[idx] = (o * (i + z * d) + v[idx] * y) * q + g[idx]
                            v[idx] = (v[idx] * (i - z * d) - o * (z * f)) * q
                        end
                    else
                        local c = sqrt(d * d - 1)
                        local r1 = -f * (d + c)
                        local r2 = -f * (d - c)
                        local ec1 = exp(r1 * dt)
                        local ec2 = exp(r2 * dt)

                        for idx = 1, #p do
                            local o = p[idx] - g[idx]
                            local co2 = (v[idx] - o * r1) / (2 * f * c)
                            local co1 = ec1 * (o - co2)

                            p[idx] = co1 + co2 * ec2 + g[idx]
                            v[idx] = co1 * r1 + co2 * ec2 * r2
                        end
                    end

                    return self.typedat.fromIntermediate(self.p)
                end
            end

            local RotationSpring = {}

            do
                RotationSpring.__index = RotationSpring

                function RotationSpring.new(
                    d: number,
                    f: number,
                    p: CFrame,
                    g: CFrame
                )
                    return setmetatable({
                        d = d,
                        f = f,
                        g = g:Orthonormalize(),
                        p = p:Orthonormalize(),
                        v = Vector3.zero,
                    }, RotationSpring)
                end
                function RotationSpring.setGoal(
                    self: RotationSpring__DARKLUA_TYPE_H,
                    value: CFrame
                )
                    self.g = value:Orthonormalize()
                end
                function RotationSpring.setDampingRatio(
                    self: RotationSpring__DARKLUA_TYPE_H,
                    dampingRatio: number
                )
                    self.d = dampingRatio
                end
                function RotationSpring.setFrequency(
                    self: RotationSpring__DARKLUA_TYPE_H,
                    frequency: number
                )
                    self.f = frequency
                end

                local function dot(v0: Vector3, v1: Vector3)
                    return v0.X * v1.X + v0.Y * v1.Y + v0.Z * v1.Z
                end
                local function areRotationsClose(c0: CFrame, c1: CFrame)
                    local rx = dot(c0.XVector, c1.XVector)
                    local ry = dot(c0.YVector, c1.YVector)
                    local rz = dot(c0.ZVector, c1.ZVector)
                    local trace = rx + ry + rz

                    return trace > 1 + 2 * cos(SLEEP_ROTATION_DIFF)
                end
                local function angleDiff(c0: CFrame, c1: CFrame)
                    local x = dot(c0.XVector, c1.XVector)
                    local y = dot(c0.YVector, c1.YVector)
                    local z = dot(c0.ZVector, c1.ZVector)
                    local w = x + y + z - 1

                    return atan2(sqrt(max(0, 1 - w * w * 0.25)), w * 0.5)
                end
                local function fromAxisAngle(axis: Vector3, angle: number)
                    local c = cos(angle)
                    local s = sin(angle)
                    local x, y, z = axis.X, axis.Y, axis.Z
                    local mxy = x * y * (1 - c)
                    local myz = y * z * (1 - c)
                    local mzx = z * x * (1 - c)
                    local rx = Vector3.new(x * x * (1 - c) + c, mxy + z * s, mzx - y * s)
                    local ry = Vector3.new(mxy - z * s, y * y * (1 - c) + c, myz + x * s)
                    local rz = Vector3.new(mzx + y * s, myz - x * s, z * z * (1 - c) + c)

                    return CFrame.fromMatrix(Vector3.zero, rx, ry, rz):Orthonormalize()
                end
                local function rotateAxis(r0: Vector3, c1: CFrame)
                    local c0 = CFrame.identity
                    local mag = r0.Magnitude

                    if mag > 1e-6 then
                        c0 = fromAxisAngle(r0.Unit, mag)
                    end

                    return c0 * c1
                end
                local function axisAngleDiff(c0: CFrame, c1: CFrame)
                    local axis = (c0 * c1:Inverse()):ToAxisAngle()
                    local angle = angleDiff(c0, c1)

                    return axis.Unit * angle
                end

                function RotationSpring.canSleep(self: RotationSpring__DARKLUA_TYPE_H)
                    local sleepP = areRotationsClose(self.p, self.g)
                    local sleepV = self.v.Magnitude < SLEEP_ROTATION_VELOCITY

                    return sleepP and sleepV
                end
                function RotationSpring.step(self: RotationSpring__DARKLUA_TYPE_H, dt: number): CFrame
                    local d = self.d
                    local f = self.f * (2 * pi)
                    local g = self.g
                    local p0 = self.p
                    local v0 = self.v
                    local offset = axisAngleDiff(p0, g)
                    local decay = exp(-d * f * dt)
                    local pt: CFrame
                    local vt: Vector3

                    if d == 1 then
                        pt = rotateAxis((offset * (1 + f * dt) + v0 * dt) * decay, g)
                        vt = (v0 * (1 - dt * f) - offset * (dt * f * f)) * decay
                    elseif d < 1 then
                        local c = sqrt(1 - d * d)
                        local i = cos(dt * f * c)
                        local j = sin(dt * f * c)
                        local y = j / (f * c)
                        local z = j / c

                        pt = rotateAxis((offset * (i + z * d) + v0 * y) * decay, g)
                        vt = (v0 * (i - z * d) - offset * (z * f)) * decay
                    else
                        local c = sqrt(d * d - 1)
                        local r1 = -f * (d + c)
                        local r2 = -f * (d - c)
                        local co2 = (v0 - offset * r1) / (2 * f * c)
                        local co1 = offset - co2
                        local e1 = co1 * exp(r1 * dt)
                        local e2 = co2 * exp(r2 * dt)

                        pt = rotateAxis(e1 + e2, g)
                        vt = e1 * r1 + e2 * r2
                    end

                    self.p = pt
                    self.v = vt

                    return pt
                end
            end

            local typeMetadata_Vector3 = {
                springType = LinearSpring.new,
                toIntermediate = function(value)
                    return {
                        value.X,
                        value.Y,
                        value.Z,
                    }
                end,
                fromIntermediate = function(value: {number})
                    return Vector3.new(value[1], value[2], value[3])
                end,
            }
            local CFrameSpring = {}

            do
                CFrameSpring.__index = CFrameSpring

                function CFrameSpring.new(
                    dampingRatio: number,
                    frequency: number,
                    valueCurrent: CFrame,
                    valueGoal: CFrame,
                    _: any
                )
                    return setmetatable({
                        rawGoal = valueGoal,
                        _position = LinearSpring.new(dampingRatio, frequency, valueCurrent.Position, valueGoal.Position, typeMetadata_Vector3),
                        _rotation = RotationSpring.new(dampingRatio, frequency, valueCurrent.Rotation, valueGoal.Rotation),
                    }, CFrameSpring)
                end
                function CFrameSpring:setGoal(value: CFrame)
                    self.rawGoal = value

                    self._position:setGoal(value.Position)
                    self._rotation:setGoal(value.Rotation)
                end
                function CFrameSpring:setDampingRatio(value: number)
                    self._position.d = value
                    self._rotation.d = value
                end
                function CFrameSpring:setFrequency(value: number)
                    self._position.f = value
                    self._rotation.f = value
                end
                function CFrameSpring:canSleep()
                    return self._position:canSleep() and self._rotation:canSleep()
                end
                function CFrameSpring:step(dt): CFrame
                    local p: Vector3 = self._position:step(dt)
                    local r: CFrame = self._rotation:step(dt)

                    return r + p
                end
            end

            local rgbToLuv
            local luvToRgb

            do
                local function inverseGammaCorrectD65(c)
                    return c < 0.0404482362771076 and c / 12.92 or 0.87941546140213 * (c + 0.055) ^ 2.4
                end
                local function gammaCorrectD65(c)
                    return c < 3.1306684424999998e-3 and 12.92 * c or 1.055 * c ^ (1 / 2.4) - 0.055
                end

                function rgbToLuv(value: Color3): {number}
                    local r, g, b = value.R, value.G, value.B

                    r = inverseGammaCorrectD65(r)
                    g = inverseGammaCorrectD65(g)
                    b = inverseGammaCorrectD65(b)

                    local x = 0.9257063972951867 * r - 0.8333736323779866 * g - 0.09209820666085898 * b
                    local y = 0.2125862307855956 * r + 0.7151703037034108 * g + 0.0722004986433362 * b
                    local z = 3.6590806972265884 * r + 11.442689580057424 * g + 4.114991502426484 * b
                    local l = y > 0.008856451679035631 and 116 * y ^ (1 / 3) - 16 or 903.296296296296 * y
                    local u, v

                    if z > 1e-14 then
                        u = l * x / z
                        v = l * (9 * y / z - 0.46832)
                    else
                        u = -0.19783 * l
                        v = -0.46832 * l
                    end

                    return {l, u, v}
                end
                function luvToRgb(value: {number}): Color3
                    local l = value[1]

                    if l < 0.0197955 then
                        return Color3.new(0, 0, 0)
                    end

                    local u = value[2] / l + 0.19783
                    local v = value[3] / l + 0.46832
                    local y = (l + 16) / 116

                    y = y > 0.20689655172413793 and y * y * y or 0.12841854934601665 * y - 0.01771290335807126

                    local x = y * u / v
                    local z = y * ((3 - 0.75 * u) / v - 5)
                    local r = 7.2914074 * x - 1.537208 * y - 0.4986286 * z
                    local g = -2.180094 * x + 1.8757561 * y + 0.0415175 * z
                    local b = 0.1253477 * x - 0.2040211 * y + 1.0569959 * z

                    if r < 0 and r < g and r < b then
                        r, g, b = 0, g - r, b - r
                    elseif g < 0 and g < b then
                        r, g, b = r - g, 0, b - g
                    elseif b < 0 then
                        r, g, b = r - b, g - b, 0
                    end

                    return Color3.new(min(gammaCorrectD65(r), 1), min(gammaCorrectD65(g), 1), min(gammaCorrectD65(b), 1))
                end
            end

            local typeMetadata = {
                boolean = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        return {
                            value and 1 or 0,
                        }
                    end,
                    fromIntermediate = function(value)
                        return value[1] >= 0.5
                    end,
                },
                number = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        return {value}
                    end,
                    fromIntermediate = function(value)
                        return value[1]
                    end,
                },
                NumberRange = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        return {
                            value.Min,
                            value.Max,
                        }
                    end,
                    fromIntermediate = function(value)
                        return NumberRange.new(value[1], value[2])
                    end,
                },
                UDim = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        return {
                            value.Scale,
                            value.Offset,
                        }
                    end,
                    fromIntermediate = function(value: {number})
                        return UDim.new(value[1], round(value[2]))
                    end,
                },
                UDim2 = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        local x = value.X
                        local y = value.Y

                        return {
                            x.Scale,
                            x.Offset,
                            y.Scale,
                            y.Offset,
                        }
                    end,
                    fromIntermediate = function(value: {number})
                        return UDim2.new(value[1], round(value[2]), value[3], round(value[4]))
                    end,
                },
                Vector2 = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        return {
                            value.X,
                            value.Y,
                        }
                    end,
                    fromIntermediate = function(value: {number})
                        return Vector2.new(value[1], value[2])
                    end,
                },
                Vector3 = typeMetadata_Vector3,
                Color3 = {
                    springType = LinearSpring.new,
                    toIntermediate = rgbToLuv,
                    fromIntermediate = luvToRgb,
                },
                ColorSequence = {
                    springType = LinearSpring.new,
                    toIntermediate = function(value)
                        local keypoints = value.Keypoints
                        local luv0 = rgbToLuv(keypoints[1].Value)
                        local luv1 = rgbToLuv(keypoints[#keypoints].Value)

                        return {
                            luv0[1],
                            luv0[2],
                            luv0[3],
                            luv1[1],
                            luv1[2],
                            luv1[3],
                        }
                    end,
                    fromIntermediate = function(value: {})
                        return ColorSequence.new(luvToRgb({
                            value[1],
                            value[2],
                            value[3],
                        }), luvToRgb({
                            value[4],
                            value[5],
                            value[6],
                        }))
                    end,
                },
                CFrame = {
                    springType = CFrameSpring.new,
                    toIntermediate = error,
                    fromIntermediate = error,
                },
            }
            local PSEUDO_PROPERTIES: PropertyOverride__DARKLUA_TYPE_I = {
                Pivot = {
                    class = 'PVInstance',
                    get = function(inst: PVInstance)
                        return inst:GetPivot()
                    end,
                    set = function(inst: PVInstance, value: CFrame)
                        inst:PivotTo(value)
                    end,
                },
                Scale = {
                    class = 'Model',
                    get = function(inst: Model)
                        return inst:GetScale()
                    end,
                    set = function(inst: Model, value: number)
                        local FLOAT_MANTISSA_MIN = 1.4020000000000001e-45
                        local FLOAT_MANTISSA_MAX = 2 ^ 24

                        value = math.clamp(value, FLOAT_MANTISSA_MIN, FLOAT_MANTISSA_MAX)

                        inst:ScaleTo(value)
                    end,
                },
            }

            local function getProperty(instance: Instance, property: string): any
                local override = PSEUDO_PROPERTIES[property]

                if override and instance:IsA(override.class) then
                    return override.get(instance)
                else
                    return (instance::any)[property]
                end
            end
            local function setProperty(
                instance: Instance,
                property: string,
                value: unknown
            )
                local override = PSEUDO_PROPERTIES[property]

                if override and instance:IsA(override.class) then
                    override.set(instance, value)
                else
                    (instance::any)[property] = value
                end
            end

            local springStates_other: {[Instance]: {[string]: any}} = {}
            local springStates_render: {[Instance]: {[string]: any}} = {}
            local completedCallbacks: {[Instance]: {() -> ()}} = {}

            local function processSprings(springStates: typeof(springStates_other), dt: number)
                for instance, state in springStates do
                    for propName, spring in state do
                        if spring:canSleep() then
                            state[propName] = nil

                            setProperty(instance, propName, spring.rawGoal)
                        else
                            setProperty(instance, propName, spring:step(dt))
                        end
                    end

                    if not next(state) then
                        springStates[instance] = nil

                        local callbackList = completedCallbacks[instance]

                        if callbackList then
                            completedCallbacks[instance] = nil

                            for _, callback in callbackList do
                                task.spawn(callback)
                            end
                        end
                    end
                end
            end

            RunService.PreSimulation:Connect(function(dt)
                processSprings(springStates_other, dt)
            end)
            RunService.PostSimulation:Connect(function(dt)
                processSprings(springStates_render, dt)
            end)

            local function assertType(
                argNum: number,
                fnName: string,
                expectedType: string,
                value: unknown
            )
                if not expectedType:find(typeof(value)) then
                    error(`bad argument #{argNum} to {fnName} ({expectedType} expected, got {typeof(value)})`, 3)
                end
            end

            local spr = {}

            function spr.target(
                instance: Instance,
                dampingRatio: number,
                frequency: number,
                properties: {[string]: any}
            )
                if STRICT_RUNTIME_TYPES then
                    assertType(1, 'spr.target', 'Instance', instance)
                    assertType(2, 'spr.target', 'number', dampingRatio)
                    assertType(3, 'spr.target', 'number', frequency)
                    assertType(4, 'spr.target', 'table', properties)
                end
                if dampingRatio ~= dampingRatio or dampingRatio < 0 then
                    error(('expected damping ratio >= 0; got %.2f'):format(dampingRatio), 2)
                end
                if frequency ~= frequency or frequency < 0 then
                    error(('expected undamped frequency >= 0; got %.2f'):format(frequency), 2)
                end

                local targetRecord: {[Instance]: {[string]: any}}

                if instance:IsA('Camera') then
                    targetRecord = springStates_render
                else
                    targetRecord = springStates_other
                end

                local state = targetRecord[instance]

                if not state then
                    state = {}
                    targetRecord[instance] = state
                end

                for propName, propTarget in properties do
                    local propValue = getProperty(instance, propName)

                    if STRICT_RUNTIME_TYPES and typeof(propTarget) ~= typeof(propValue) then
                        error(`bad property {propName} to spr.target ({typeof(propValue)} expected, got {typeof(propTarget)})`, 2)
                    end
                    if frequency == math.huge then
                        setProperty(instance, propName, propTarget)

                        state[propName] = nil

                        continue
                    end

                    local spring = state[propName]

                    if not spring then
                        local md = typeMetadata[typeof(propTarget)]

                        if not md then
                            error('unsupported type: ' .. typeof(propTarget), 2)
                        end

                        spring = md.springType(dampingRatio, frequency, propValue, propTarget, md)
                        state[propName] = spring
                    end

                    spring:setGoal(propTarget)
                    spring:setDampingRatio(dampingRatio)
                    spring:setFrequency(frequency)
                end

                if not next(state) then
                    targetRecord[instance] = nil
                end
            end
            function spr.stop(instance: Instance, property: string?)
                if STRICT_RUNTIME_TYPES then
                    assertType(1, 'spr.stop', 'Instance', instance)
                    assertType(2, 'spr.stop', 'string|nil', property)
                end
                if property then
                    local state = springStates_other[instance] or springStates_render[instance]

                    if state then
                        state[property] = nil
                    end
                else
                    springStates_other[instance] = nil
                    springStates_render[instance] = nil
                end
            end
            function spr.completed(instance: Instance, callback: () -> ())
                if STRICT_RUNTIME_TYPES then
                    assertType(1, 'spr.completed', 'Instance', instance)
                    assertType(2, 'spr.completed', 'function', callback)
                end

                local callbackList = completedCallbacks[instance]

                if callbackList then
                    table.insert(callbackList, callback)
                else
                    completedCallbacks[instance] = {callback}
                end
            end

            return table.freeze(spr)
        end

        function __DARKLUA_BUNDLE_MODULES.x(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.x

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.x = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.h()

            local componentStyle = __DARKLUA_BUNDLE_MODULES.v()
            local tabStyle = __DARKLUA_BUNDLE_MODULES.w()
            local spring = __DARKLUA_BUNDLE_MODULES.x()
            local TabController = {}

            TabController.__index = TabController

            function TabController.new(appearance: Appearance__DARKLUA_TYPE_z, tabs: {Tab__DARKLUA_TYPE_C}): Controller__DARKLUA_TYPE_B
                local self = setmetatable({}, TabController)

                self.appearance = appearance
                self.tabs = tabs
                self.selected = false

                return self::any
            end
            function TabController.select(self: Controller__DARKLUA_TYPE_B)
                for _, tab in self.tabs do
                    local isSelected = tab.appearance == self.appearance
                    local style = isSelected and tabStyle.SELECTED or tabStyle.DEFAULT

                    tab.controller:applyStyle(style)

                    tab.controller.selected = isSelected
                    tab.section.Visible = isSelected
                end
            end
            function TabController.applyStyle(self: Controller__DARKLUA_TYPE_B, style: Style__DARKLUA_TYPE_A)
                local appearance = self.appearance

                spring.target(appearance.tab, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    BackgroundTransparency = style.TAB,
                })
                spring.target(appearance.stroke, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    Transparency = style.STROKE,
                })
                spring.target(appearance.icon, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    ImageColor3 = style.ICON,
                })
                spring.target(appearance.title, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    TextColor3 = style.TITTLE,
                })
            end

            return TabController
        end

        function __DARKLUA_BUNDLE_MODULES.y(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.y

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.y = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local TextService = game:GetService('TextService')
            local FONT_SIZE = 16
            local FONT_ENUM = Enum.Font.GothamMedium

            local function getTextSize(
                text: string,
                width: number,
                height: number
            )
                local frameSize = Vector2.new(width, height)
                local textSize = TextService:GetTextSize(text, FONT_SIZE, FONT_ENUM, frameSize)

                return UDim2.fromOffset(textSize.X, textSize.Y)
            end
            local function getAxisOffset(size: UDim2, axis: 'X' | 'Y')
                if axis == 'X' then
                    return size.X.Offset
                end

                return size.Y.Offset
            end
            local function getComponentSize(
                component: GuiObject,
                axis: 'X' | 'Y',
                padding: number,
                gap: number
            )
                local componentSize = padding * 2
                local objectCount = 0

                for _, object in component:GetChildren()do
                    if not object:IsA('GuiObject') then
                        continue
                    end

                    componentSize += getAxisOffset(object.Size, axis)
                    objectCount += 1

                    if objectCount > 1 then
                        componentSize += gap
                    end
                end

                return componentSize
            end

            return {
                getTextSize = getTextSize,
                getComponentSize = getComponentSize,
            }
        end

        function __DARKLUA_BUNDLE_MODULES.z(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.z

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.z = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.c()

            local componentStyle = __DARKLUA_BUNDLE_MODULES.v()
            local scale = __DARKLUA_BUNDLE_MODULES.z()
            local spring = __DARKLUA_BUNDLE_MODULES.x()
            local Button = {}

            Button.__index = Button

            function Button.new(appearance: Appearance__DARKLUA_TYPE_i, config: Config__DARKLUA_TYPE_h): Controller__DARKLUA_TYPE_k
                local self = setmetatable({}, Button)

                self.appearance = appearance
                self.config = config

                return self::any
            end
            function Button.activate(self: Controller__DARKLUA_TYPE_k)
                self.config.callback()
            end
            function Button.applySize(self: Controller__DARKLUA_TYPE_k)
                local description = self.appearance.description
                local textSize = scale.getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)

                description.text.Size = textSize
                description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

                local componentHeight = scale.getComponentSize(self.appearance.button, 'Y', componentStyle.PADDING, componentStyle.GAP)

                self.appearance.button.Size = UDim2.new(1, 0, 0, componentHeight)
            end
            function Button.applyStyle(self: Controller__DARKLUA_TYPE_k, style: Style__DARKLUA_TYPE_j)
                spring.target(self.appearance.button, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    BackgroundColor3 = style.BUTTON,
                })
            end

            return Button
        end

        function __DARKLUA_BUNDLE_MODULES.A(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.A

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.A = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                DISABLED = {
                    THUMB = Color3.fromRGB(47, 47, 47),
                    CIRCLE = Color3.fromRGB(126, 126, 126),
                    POSITION = UDim2.fromScale(0, 0.5),
                    ANCHOR_POINT = Vector2.new(0, 0.5),
                },
                ENABLED = {
                    THUMB = Color3.fromRGB(255, 255, 255),
                    CIRCLE = Color3.fromRGB(34, 34, 34),
                    POSITION = UDim2.fromScale(1, 0.5),
                    ANCHOR_POINT = Vector2.new(1, 0.5),
                },
            }
        end

        function __DARKLUA_BUNDLE_MODULES.B(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.B

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.B = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.g()

            local componentStyle = __DARKLUA_BUNDLE_MODULES.v()
            local switchStyle = __DARKLUA_BUNDLE_MODULES.B()
            local scale = __DARKLUA_BUNDLE_MODULES.z()
            local spring = __DARKLUA_BUNDLE_MODULES.x()
            local Switch = {}

            Switch.__index = Switch

            function Switch.new(
                appearance: Appearance__DARKLUA_TYPE_u,
                config: Config__DARKLUA_TYPE_t,
                flags: Flags__DARKLUA_TYPE_g
            ): Controller__DARKLUA_TYPE_w
                local self = setmetatable({}, Switch)

                self.appearance = appearance
                self.config = config
                self.flags = flags
                self.enabled = false

                return self::any
            end
            function Switch.changeState(self: Controller__DARKLUA_TYPE_w, state: boolean?)
                self.enabled = state or not self.enabled

                local style = self.enabled and switchStyle.ENABLED or switchStyle.DISABLED

                self:applyStyle(style)
                self.config.callback(self.enabled)
                self.flags:setFlag(self.config.flag, self.enabled)
            end
            function Switch.applySize(self: Controller__DARKLUA_TYPE_w)
                local description = self.appearance.description
                local textSize = scale.getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)

                description.text.Size = textSize
                description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

                local componentHeight = scale.getComponentSize(self.appearance.switch, 'Y', componentStyle.PADDING, componentStyle.GAP)

                self.appearance.switch.Size = UDim2.new(1, 0, 0, componentHeight)
            end
            function Switch.applyStyle(self: Controller__DARKLUA_TYPE_w, style: Style__DARKLUA_TYPE_v)
                local thumb = self.appearance.thumb

                spring.target(thumb.frame, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    BackgroundColor3 = style.THUMB,
                })
                spring.target(thumb.circle, componentStyle.DAMPING_RATIO, componentStyle.FREQUENCY, {
                    AnchorPoint = style.ANCHOR_POINT,
                    Position = style.POSITION,
                    BackgroundColor3 = style.CIRCLE,
                })
            end

            return Switch
        end

        function __DARKLUA_BUNDLE_MODULES.C(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.C

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.C = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.e()

            local connections: {RBXScriptConnection} = {}
            local Signal = {}

            Signal.__index = Signal

            function Signal.new(): Signal__DARKLUA_TYPE_n
                local self = setmetatable({}, Signal)

                self.connection = nil

                return self::any
            end
            function Signal.isConnected(self: Signal__DARKLUA_TYPE_n)
                if not self.connection then
                    return false
                end

                return self.connection.Connected
            end
            function Signal.connect(
                self: Signal__DARKLUA_TYPE_n,
                signal: RBXScriptSignal,
                callback: (...any) -> ...any
            )
                if self.connection then
                    return
                end

                local connection = signal:Connect(callback)

                self.connection = connection

                table.insert(connections, connection)
            end
            function Signal.disconnect(self: Signal__DARKLUA_TYPE_n)
                if not self.connection then
                    return
                end

                local index = table.find(connections, self.connection)

                if index then
                    self.connection:Disconnect()

                    self.connection = nil

                    table.remove(connections, index)
                end
            end
            function Signal.clear()
                for index, connection in connections do
                    connection:Disconnect()

                    connections[index] = nil
                end
            end

            return Signal
        end

        function __DARKLUA_BUNDLE_MODULES.D(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.D

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.D = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local UserInputService = game:GetService('UserInputService')

            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.f()

            local Signal = __DARKLUA_BUNDLE_MODULES.D()
            local componentStyle = __DARKLUA_BUNDLE_MODULES.v()
            local scale = __DARKLUA_BUNDLE_MODULES.z()
            local END_INPUT = Enum.UserInputState.End
            local MOUSE_INPUT = Enum.UserInputType.MouseButton1
            local MOVE_INPUT = Enum.UserInputType.MouseMovement
            local Slider = {}

            Slider.__index = Slider

            function Slider.new(
                appearance: Appearance__DARKLUA_TYPE_p,
                config: Config__DARKLUA_TYPE_o,
                flags: Flags__DARKLUA_TYPE_g
            ): Controller__DARKLUA_TYPE_r
                local self = setmetatable({}, Slider)

                self.appearance = appearance
                self.config = config
                self.flags = flags
                self.value = 0
                self.dragging = false
                self.startInput = nil
                self.inputChanged = Signal.new()

                return self::any
            end
            function Slider.changeValue(
                self: Controller__DARKLUA_TYPE_r,
                value: number,
                difference: boolean
            )
                local clamped = math.clamp(value, self.config.min, self.config.max)
                local range = self.config.max - self.config.min
                local offset = clamped - self.config.min
                local percentage = offset / range

                if difference and self.value == clamped then
                    return
                end

                self.appearance.value.Text = tostring(clamped)
                self.value = clamped

                self:applyTrack(percentage)

                if self.config.callback then
                    self.config.callback(clamped)
                end

                self.flags:setFlag(self.config.flag, clamped)
            end
            function Slider.resetState(self: Controller__DARKLUA_TYPE_r)
                self.dragging = false
                self.startInput = nil

                if self.inputChanged:isConnected() then
                    self.inputChanged:disconnect()
                end
            end
            function Slider.onInputBegan(self: Controller__DARKLUA_TYPE_r, input: InputObject)
                if input.UserInputType ~= MOUSE_INPUT then
                    return
                end

                self.dragging = true
                self.startInput = input

                self.inputChanged:connect(UserInputService.InputChanged, function(
                    input: InputObject
                )
                    self:onInputChange(input)
                end)
            end
            function Slider.onInputChange(self: Controller__DARKLUA_TYPE_r, input: InputObject)
                if not self.dragging or not self.startInput then
                    return
                end
                if input.UserInputState == END_INPUT or self.startInput.UserInputState == END_INPUT then
                    self:resetState()

                    return
                end
                if input.UserInputType == MOVE_INPUT then
                    self:updateFromInput(input)
                end
            end
            function Slider.onInputEnd(self: Controller__DARKLUA_TYPE_r, input: InputObject)
                if input.UserInputType == MOUSE_INPUT then
                    self:resetState()
                end
            end
            function Slider.updateFromInput(self: Controller__DARKLUA_TYPE_r, input: InputObject)
                local track = self.appearance.track
                local relative = input.Position.X - track.frame.AbsolutePosition.X
                local percentage = math.clamp(relative / track.frame.AbsoluteSize.X, 0, 1)
                local range = self.config.max - self.config.min
                local raw = self.config.min + percentage * range
                local rounded = math.round(raw * self.config.division) / self.config.division

                self:changeValue(rounded, true)
            end
            function Slider.applyTrack(self: Controller__DARKLUA_TYPE_r, percentage: number)
                local circleSize = self.appearance.track.circle.AbsoluteSize.X
                local trackWidth = circleSize / 2 - circleSize * percentage

                self.appearance.track.fill.Size = UDim2.new(percentage, trackWidth, 1, 0)
            end
            function Slider.applySize(self: Controller__DARKLUA_TYPE_r)
                local description = self.appearance.description
                local textSize = scale.getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)

                description.text.Size = textSize
                description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

                local componentHeight = scale.getComponentSize(self.appearance.slider, 'Y', componentStyle.PADDING, componentStyle.GAP)

                self.appearance.slider.Size = UDim2.new(1, 0, 0, componentHeight)
            end

            return Slider
        end

        function __DARKLUA_BUNDLE_MODULES.E(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.E

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.E = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                container = __DARKLUA_BUNDLE_MODULES.u(),
                tab = __DARKLUA_BUNDLE_MODULES.y(),
                button = __DARKLUA_BUNDLE_MODULES.A(),
                switch = __DARKLUA_BUNDLE_MODULES.C(),
                slider = __DARKLUA_BUNDLE_MODULES.E(),
            }
        end

        function __DARKLUA_BUNDLE_MODULES.F(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.F

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.F = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Signal = __DARKLUA_BUNDLE_MODULES.D()

            __DARKLUA_BUNDLE_MODULES.a()

            return function(
                appearance: Appearance__DARKLUA_TYPE_d,
                controller: Controller__DARKLUA_TYPE_e,
                onDestroyed: (() -> ())?
            )
                local header = appearance.header
                local minimize = Signal.new()
                local fullscreen = Signal.new()
                local close = Signal.new()
                local destroy = Signal.new()

                minimize:connect(header.minimize.MouseButton1Click, function()
                    controller:minimize()
                end)
                fullscreen:connect(header.fullscreen.MouseButton1Click, function(
                )
                    controller:fullscreen()
                end)
                close:connect(header.close.MouseButton1Click, function()
                    controller:destroy()
                end)
                destroy:connect(appearance.root.screen.AncestryChanged, function(
                )
                    Signal.clear()

                    if onDestroyed then
                        onDestroyed()
                    end
                end)
            end
        end

        function __DARKLUA_BUNDLE_MODULES.G(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.G

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.G = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local tabStyle = __DARKLUA_BUNDLE_MODULES.w()

            __DARKLUA_BUNDLE_MODULES.h()

            local Signal = __DARKLUA_BUNDLE_MODULES.D()

            return function(appearance: Appearance__DARKLUA_TYPE_z, controller: Controller__DARKLUA_TYPE_B)
                local tab = appearance.tab
                local click = Signal.new()
                local mouseEnter = Signal.new()
                local mouseLeave = Signal.new()

                click:connect(tab.MouseButton1Click, function()
                    controller:select()
                end)
                mouseEnter:connect(tab.MouseEnter, function()
                    if not controller.selected then
                        controller:applyStyle(tabStyle.HOVERED)
                    end
                end)
                mouseLeave:connect(tab.MouseLeave, function()
                    if not controller.selected then
                        controller:applyStyle(tabStyle.DEFAULT)
                    end
                end)
            end
        end

        function __DARKLUA_BUNDLE_MODULES.H(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.H

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.H = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                DEFAULT = {
                    BUTTON = Color3.fromRGB(16, 16, 16),
                },
                HOVERED = {
                    BUTTON = Color3.fromRGB(22, 22, 22),
                },
            }
        end

        function __DARKLUA_BUNDLE_MODULES.I(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.I

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.I = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local buttonStyle = __DARKLUA_BUNDLE_MODULES.I()

            __DARKLUA_BUNDLE_MODULES.c()

            local Signal = __DARKLUA_BUNDLE_MODULES.D()

            return function(appearance: Appearance__DARKLUA_TYPE_i, controller: Controller__DARKLUA_TYPE_k)
                local button = appearance.button
                local click = Signal.new()
                local mouseEnter = Signal.new()
                local mouseLeave = Signal.new()

                click:connect(button.MouseButton1Click, function()
                    controller:activate()
                end)
                mouseEnter:connect(button.MouseEnter, function()
                    controller:applyStyle(buttonStyle.HOVERED)
                end)
                mouseLeave:connect(button.MouseLeave, function()
                    controller:applyStyle(buttonStyle.DEFAULT)
                end)
            end
        end

        function __DARKLUA_BUNDLE_MODULES.J(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.J

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.J = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Signal = __DARKLUA_BUNDLE_MODULES.D()

            __DARKLUA_BUNDLE_MODULES.g()

            return function(appearance: Appearance__DARKLUA_TYPE_u, controller: Controller__DARKLUA_TYPE_w)
                local click = Signal.new()

                click:connect(appearance.switch.MouseButton1Click, function()
                    controller:changeState()
                end)
            end
        end

        function __DARKLUA_BUNDLE_MODULES.K(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.K

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.K = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local Signal = __DARKLUA_BUNDLE_MODULES.D()

            __DARKLUA_BUNDLE_MODULES.f()

            return function(appearance: Appearance__DARKLUA_TYPE_p, controller: Controller__DARKLUA_TYPE_r)
                local dragStart = Signal.new()
                local dragEnd = Signal.new()

                dragStart:connect(appearance.track.hitbox.InputBegan, function(
                    input: InputObject
                )
                    controller:onInputBegan(input)
                end)
                dragEnd:connect(appearance.track.hitbox.InputEnded, function(
                    input: InputObject
                )
                    controller:onInputEnd(input)
                end)
            end
        end

        function __DARKLUA_BUNDLE_MODULES.L(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.L

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.L = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return {
                container = __DARKLUA_BUNDLE_MODULES.G(),
                tab = __DARKLUA_BUNDLE_MODULES.H(),
                button = __DARKLUA_BUNDLE_MODULES.J(),
                switch = __DARKLUA_BUNDLE_MODULES.K(),
                slider = __DARKLUA_BUNDLE_MODULES.L(),
            }
        end

        function __DARKLUA_BUNDLE_MODULES.M(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.M

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.M = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.a()

            local appearances = __DARKLUA_BUNDLE_MODULES.t()
            local controllers = __DARKLUA_BUNDLE_MODULES.F()
            local events = __DARKLUA_BUNDLE_MODULES.M()
            local Container = {}

            Container.__index = Container

            function Container.new(onDestroyed: (() -> ())?): Container__DARKLUA_TYPE_f
                local self = setmetatable({}, Container)

                self.appearance = appearances.container()
                self.controller = controllers.container.new(self.appearance)

                events.container(self.appearance, self.controller, onDestroyed)

                return self::any
            end

            return Container
        end

        function __DARKLUA_BUNDLE_MODULES.N(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.N

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.N = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.c()

            local appearances = __DARKLUA_BUNDLE_MODULES.t()
            local controllers = __DARKLUA_BUNDLE_MODULES.F()
            local events = __DARKLUA_BUNDLE_MODULES.M()
            local Button = {}

            Button.__index = Button

            function Button.new(config: Config__DARKLUA_TYPE_h, section: ScrollingFrame): Button__DARKLUA_TYPE_l
                local self = setmetatable({}, Button)

                self.appearance = appearances.button(config, section)
                self.controller = controllers.button.new(self.appearance, config)

                events.button(self.appearance, self.controller)
                self.controller:applySize()

                return self::any
            end

            return Button
        end

        function __DARKLUA_BUNDLE_MODULES.O(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.O

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.O = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.d()

            local appearances = __DARKLUA_BUNDLE_MODULES.t()
            local Label = {}

            Label.__index = Label

            function Label.new(title: string, section: ScrollingFrame): Label__DARKLUA_TYPE_m
                local self = setmetatable({}, Label)

                self.appearance = appearances.label(title, section)

                return self::any
            end

            return Label
        end

        function __DARKLUA_BUNDLE_MODULES.P(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.P

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.P = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.f()

            local appearances = __DARKLUA_BUNDLE_MODULES.t()
            local controllers = __DARKLUA_BUNDLE_MODULES.F()
            local events = __DARKLUA_BUNDLE_MODULES.M()
            local Slider = {}

            Slider.__index = Slider

            function Slider.new(
                config: Config__DARKLUA_TYPE_o,
                section: ScrollingFrame,
                flags: Flags__DARKLUA_TYPE_g
            ): Slider__DARKLUA_TYPE_s
                local self = setmetatable({}, Slider)

                self.appearance = appearances.slider(config, section)
                self.controller = controllers.slider.new(self.appearance, config, flags)

                events.slider(self.appearance, self.controller)
                self.controller:applySize()

                local flag = flags:getFlag(config.flag, 'number')
                local value = if flag ~= nil then flag else config.value

                self.controller:changeValue(value, false)

                return self::any
            end
            function Slider.changeValue(self: Slider__DARKLUA_TYPE_s, value: number)
                self.controller:changeValue(value, false)
            end

            return Slider
        end

        function __DARKLUA_BUNDLE_MODULES.Q(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.Q

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.Q = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.g()

            local appearances = __DARKLUA_BUNDLE_MODULES.t()
            local controllers = __DARKLUA_BUNDLE_MODULES.F()
            local events = __DARKLUA_BUNDLE_MODULES.M()
            local Switch = {}

            Switch.__index = Switch

            function Switch.new(
                config: Config__DARKLUA_TYPE_t,
                section: ScrollingFrame,
                flags: Flags__DARKLUA_TYPE_g
            ): Switch__DARKLUA_TYPE_x
                local self = setmetatable({}, Switch)

                self.appearance = appearances.switch(config, section)
                self.controller = controllers.switch.new(self.appearance, config, flags)

                events.switch(self.appearance, self.controller)
                self.controller:applySize()

                local flag = flags:getFlag(config.flag, 'boolean')
                local state = if flag ~= nil then flag else config.enabled

                if state then
                    self.controller:changeState(state)
                end

                return self::any
            end
            function Switch.setState(self: Switch__DARKLUA_TYPE_x, state: boolean)
                self.controller:changeState(state)
            end

            return Switch
        end

        function __DARKLUA_BUNDLE_MODULES.R(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.R

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.R = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            __DARKLUA_BUNDLE_MODULES.c()
            __DARKLUA_BUNDLE_MODULES.a()
            __DARKLUA_BUNDLE_MODULES.b()
            __DARKLUA_BUNDLE_MODULES.f()
            __DARKLUA_BUNDLE_MODULES.g()
            __DARKLUA_BUNDLE_MODULES.h()

            local Button = __DARKLUA_BUNDLE_MODULES.O()
            local Label = __DARKLUA_BUNDLE_MODULES.P()
            local Slider = __DARKLUA_BUNDLE_MODULES.Q()
            local Switch = __DARKLUA_BUNDLE_MODULES.R()
            local appearances = __DARKLUA_BUNDLE_MODULES.t()
            local controllers = __DARKLUA_BUNDLE_MODULES.F()
            local events = __DARKLUA_BUNDLE_MODULES.M()
            local Tab = {}

            Tab.__index = Tab

            function Tab.new(
                config: Config__DARKLUA_TYPE_y,
                container: Container__DARKLUA_TYPE_f,
                flags: Flags__DARKLUA_TYPE_g,
                tabs: {Tab__DARKLUA_TYPE_C}
            ): Tab__DARKLUA_TYPE_C
                local self = setmetatable({}, Tab)
                local group = container.appearance.group

                self.appearance = appearances.tab(config, group.tabs)
                self.controller = controllers.tab.new(self.appearance, tabs)
                self.section = appearances.section(group.sections)
                self.flags = flags

                events.tab(self.appearance, self.controller)

                return self::any
            end
            function Tab.select(self: Tab__DARKLUA_TYPE_C)
                self.controller:select()
            end
            function Tab.createLabel(self: Tab__DARKLUA_TYPE_C, title: string)
                return Label.new(title, self.section)
            end
            function Tab.createButton(self: Tab__DARKLUA_TYPE_C, config: Config__DARKLUA_TYPE_h)
                return Button.new(config, self.section)
            end
            function Tab.createSwitch(self: Tab__DARKLUA_TYPE_C, config: Config__DARKLUA_TYPE_t)
                return Switch.new(config, self.section, self.flags)
            end
            function Tab.createSlider(self: Tab__DARKLUA_TYPE_C, config: Config__DARKLUA_TYPE_o)
                return Slider.new(config, self.section, self.flags)
            end

            return Tab
        end

        function __DARKLUA_BUNDLE_MODULES.S(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.S

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.S = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local HttpService = game:GetService('HttpService')

            local function ensureFolderExists(path: string)
                if not isfolder(path) then
                    makefolder(path)
                end
            end

            function getContent(path: string): any
                if not isfile(path) then
                    return {}
                end

                local file = readfile(path)
                local success, content = pcall(function()
                    return HttpService:JSONDecode(file)
                end)

                if not success then
                    return {}
                end

                return content
            end

            local function writeData(path: string, data: any)
                local success, content = pcall(function()
                    return HttpService:JSONEncode(data)
                end)

                if success then
                    writefile(path, content)
                end
            end

            return {
                ensureFolderExists = ensureFolderExists,
                getContent = getContent,
                writeData = writeData,
            }
        end

        function __DARKLUA_BUNDLE_MODULES.T(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.T

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.T = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local file = __DARKLUA_BUNDLE_MODULES.T()

            __DARKLUA_BUNDLE_MODULES.b()

            local ROOT_PATH = 'illumina'
            local PRODUCTS_PATH = `{ROOT_PATH}/products`
            local FILE_TYPE = 'json'
            local Flags = {}

            Flags.__index = Flags

            function Flags.new(product: string): Flags__DARKLUA_TYPE_g
                local path = `{PRODUCTS_PATH}/{product}.{FILE_TYPE}`

                file.ensureFolderExists(ROOT_PATH)

                local self = setmetatable({}, Flags)

                self.path = path
                self.flags = file.getContent(path)

                return self::any
            end
            function Flags.getFlag(
                self: Flags__DARKLUA_TYPE_g,
                name: string,
                defaultType: string
            )
                local flag = self.flags[name]

                if flag ~= nil and typeof(flag) == defaultType or not defaultType then
                    return flag
                end

                return nil
            end
            function Flags.setFlag(
                self: Flags__DARKLUA_TYPE_g,
                name: string,
                value: string
            )
                self.flags[name] = value

                file.writeData(self.path, self.flags)
            end

            return Flags
        end

        function __DARKLUA_BUNDLE_MODULES.U(): typeof(__modImpl())
            local v = __DARKLUA_BUNDLE_MODULES.cache.U

            if not v then
                v = {
                    c = __modImpl(),
                }
                __DARKLUA_BUNDLE_MODULES.cache.U = v
            end

            return v.c
        end
    end
end

__DARKLUA_BUNDLE_MODULES.i()
__DARKLUA_BUNDLE_MODULES.h()

local Container = __DARKLUA_BUNDLE_MODULES.N()
local Tab = __DARKLUA_BUNDLE_MODULES.S()
local Flags = __DARKLUA_BUNDLE_MODULES.U()
local Library = {}

Library.__index = Library

function Library.new(config: Config__DARKLUA_TYPE_D): Library__DARKLUA_TYPE_E
    local self = setmetatable({}, Library)

    self.container = Container.new(config.onDestroyed)
    self.flags = Flags.new(config.product)
    self.tabs = {}

    return self::any
end
function Library.createTab(self: Library__DARKLUA_TYPE_E, config: Config__DARKLUA_TYPE_y)
    local tab = Tab.new(config, self.container, self.flags, self.tabs)

    table.insert(self.tabs, tab)

    if #self.tabs == 1 then
        tab:select()
    end

    return tab
end

local library = Library.new({
    product = 'library',
    onDestroyed = function()
        print('library has been destroyed')
    end,
})
local preview = library:createTab({
    title = 'Preview',
})

preview:createLabel('Button')
preview:createButton({
    title = 'Share across devices',
    description = 
[[Focus is shared across devices, and turns off when you leave the app.]],
    callback = function()
        print('button has been pressed')
    end,
})
preview:createButton({
    title = 'Local state persistence',
    description = 
[[Your settings and data are stored locally on the device, allowing the application to restore its state instantly without relying on external services or network connectivity.]],
    callback = function()
        print('button has been pressed')
    end,
})
preview:createLabel('Switch')

local switch = preview:createSwitch({
    flag = 'switch-1',
    title = 'Share across devices',
    description = 
[[Focus is shared across devices, and turns off when you leave the app.]],
    enabled = false,
    callback = function(state: boolean)
        print(`switch-1: {state}`)
    end,
})

switch:changeState(true)
preview:createSwitch({
    flag = 'switch-2',
    title = 'Local state persistence',
    description = 
[[Your settings and data are stored locally on the device, allowing the application to restore its state instantly without relying on external services or network connectivity.]],
    enabled = true,
    callback = function(state: boolean)
        print(`switch-2: {state}`)
    end,
})
preview:createLabel('Slider')
preview:createSlider({
    flag = 'slider-1',
    title = 'Share across devices',
    description = 
[[Focus is shared across devices, and turns off when you leave the app.]],
    division = 1,
    value = 75,
    min = 0,
    max = 100,
    callback = function(value: number)
        print(`slider-1: {value}`)
    end,
})
preview:createSlider({
    flag = 'slider-2',
    title = 'Local state persistence',
    description = 
[[Your settings and data are stored locally on the device, allowing the application to restore its state instantly without relying on external services or network connectivity.]],
    division = 10,
    value = 25,
    min = 0,
    max = 100,
    callback = function(value: number)
        print(`slider-2: {value}`)
    end,
})
library:createTab({
    title = 'Preview',
})

return Library
