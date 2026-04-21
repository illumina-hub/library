type View__DARKLUA_TYPE_a = {illumina: ScreenGui, container: Frame, corner: UICorner, header: Frame, minimize: TextButton, expand: TextButton, close: TextButton, tabs: ScrollingFrame, sections: Frame}
type Props__DARKLUA_TYPE_b = {product: string, destroyed: () -> ()}
type View__DARKLUA_TYPE_c = {tab: TextButton, stroke: UIStroke, title: TextLabel, icon: ImageLabel}
type Style__DARKLUA_TYPE_d = {TAB_TRANSPARENCY: number, STROKE_TRANSPARENCY: number, ICON_COLOR: Color3, TEXT_COLOR: Color3}
type Props__DARKLUA_TYPE_e = {title: string, icon: string?}
type Drag__DARKLUA_TYPE_f = setmetatable<{_dragging: boolean, _permission: boolean, _startInput: InputObject?, _startVector: Vector2?, _lastPosition: UDim2?, _inputChanged: (() -> ())?}, typeof(Drag)>
type TypeMetadata__DARKLUA_TYPE_g<T> = {springType: (dampingRatio:number, frequency:number, pos:number, typedat:TypeMetadata__DARKLUA_TYPE_g<T>, rawTarget:T) -> LinearSpring__DARKLUA_TYPE_h<T>, toIntermediate: (T) -> {number}, fromIntermediate: ({number}) -> T}
type LinearSpring__DARKLUA_TYPE_h<T> = typeof(setmetatable({}::{d: number, f: number, g: {number}, p: {number}, v: {number}, typedat: TypeMetadata__DARKLUA_TYPE_g<T>, rawTarget: T}, LinearSpring))
type RotationSpring__DARKLUA_TYPE_i = typeof(setmetatable({}::{d: number, f: number, g: CFrame, p: CFrame, v: Vector3}, RotationSpring))
type PropertyOverride__DARKLUA_TYPE_j = {[string]: {class: string, get: (any) -> (), set: (any, any) -> ()}}
type Root__DARKLUA_TYPE_k = setmetatable<{view: View__DARKLUA_TYPE_a, _drag: Drag__DARKLUA_TYPE_f, _expanded: boolean, _lastSize: UDim2}, typeof(Root)>
type View__DARKLUA_TYPE_l = {button: TextButton, title: TextLabel, description: {frame: Frame, text: TextLabel}}
type Style__DARKLUA_TYPE_m = {BUTTON_COLOR: Color3}
type Props__DARKLUA_TYPE_n = {title: string, description: string, activated: (() -> ())?}
type View__DARKLUA_TYPE_o = {slider: Frame, title: TextLabel, value: TextLabel, track: {frame: Frame, fill: Frame, circle: Frame, hitbox: TextButton}, description: {frame: Frame, text: TextLabel}}
type Props__DARKLUA_TYPE_p = {flag: string, title: string, description: string, division: number, value: number, min: number, max: number, changed: ((value:number) -> ())?}
type View__DARKLUA_TYPE_q = {switch: TextButton, title: TextLabel, thumb: {frame: Frame, circle: Frame}, description: {frame: Frame, text: TextLabel}}
type Style__DARKLUA_TYPE_r = {THUMB_COLOR: Color3, CIRCLE_COLOR: Color3, CIRCLE_POSITION: UDim2, CIRCLE_ANCHOR_POINT: Vector2}
type Props__DARKLUA_TYPE_s = {flag: string, title: string, description: string, enabled: boolean?, changed: ((state:boolean) -> ())?}
type Button__DARKLUA_TYPE_t = setmetatable<{view: View__DARKLUA_TYPE_l}, typeof(Button)>
type Flags__DARKLUA_TYPE_u = setmetatable<{_path: string, _flags: {[string]: any}}, typeof(Flags)>
type Slider__DARKLUA_TYPE_v = setmetatable<{props: Props__DARKLUA_TYPE_p, flags: Flags__DARKLUA_TYPE_u, view: View__DARKLUA_TYPE_o, _value: number, _dragging: boolean, _startInput: InputObject?, _inputChanged: (() -> ())?}, typeof(Slider)>
type Switch__DARKLUA_TYPE_w = setmetatable<{props: Props__DARKLUA_TYPE_s, flags: Flags__DARKLUA_TYPE_u, view: View__DARKLUA_TYPE_q, _enabled: boolean}, typeof(Switch)>
type Tab__DARKLUA_TYPE_x = setmetatable<{flags: Flags__DARKLUA_TYPE_u, view: View__DARKLUA_TYPE_c, _tabs: {Tab__DARKLUA_TYPE_x}, _selected: boolean, _section: ScrollingFrame}, typeof(Tab)>

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
            return {
                END_INPUT = Enum.UserInputState.End,
                MOUSE_INPUT = Enum.UserInputType.MouseButton1,
                MOVE_INPUT = Enum.UserInputType.MouseMovement,
            }
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
            return {
                DEF_POSITION = UDim2.fromScale(0.5, 0.5),
                DEF_SIZE = UDim2.fromOffset(750, 500),
                MIN_SIZE = UDim2.fromOffset(300, 255),
                MAX_SIZE = UDim2.fromScale(1, 1),
                MIN_CORNER = UDim.new(0, 0),
                MAX_CORNER = UDim.new(0, 10),
            }
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
            local connections: {RBXScriptConnection} = {}

            local function new(signal: RBXScriptSignal, callback: (...any) -> ...any)
                local connection = signal:Connect(callback)

                table.insert(connections, connection)

                return function()
                    local index = table.find(connections, connection)

                    if index then
                        table.remove(connections, index)
                    end

                    connection:Disconnect()
                end
            end
            local function clear()
                for _, connection in connections do
                    connection:Disconnect()
                end

                table.clear(connections)
            end

            return {
                new = new,
                clear = clear,
            }
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
            local GuiService = game:GetService('GuiService')
            local UserInputService = game:GetService('UserInputService')
            local inputs = __DARKLUA_BUNDLE_MODULES.c()
            local rootStyles = __DARKLUA_BUNDLE_MODULES.d()
            local signals = __DARKLUA_BUNDLE_MODULES.e()
            local currentCamera = workspace.CurrentCamera
            local Drag = {}

            Drag.__index = Drag

            function Drag.new(root: GuiObject, target: GuiObject)
                local self = setmetatable({
                    _dragging = false,
                    _permission = true,
                    _startInput = nil,
                    _startVector = nil,
                    _lastPosition = nil,
                    _inputChanged = nil,
                }, Drag)::Drag__DARKLUA_TYPE_f

                signals.new(target.InputBegan, function(inputObject: InputObject)
                    self:_onInputBegan(inputObject, root)
                end)
                signals.new(target.InputEnded, function(inputObject: InputObject)
                    self:_onInputEnded(inputObject)
                end)

                return self
            end
            function Drag._resetState(self: Drag__DARKLUA_TYPE_f)
                self._dragging = false
                self._startInput = nil
                self._startVector = nil

                if self._inputChanged then
                    self._inputChanged()
                end
            end
            function Drag.setPermission(self: Drag__DARKLUA_TYPE_f, state: boolean)
                self._permission = state

                if not state then
                    self:_resetState()
                end
            end
            function Drag.getLastPosition(self: Drag__DARKLUA_TYPE_f)
                return self._lastPosition or rootStyles.DEF_POSITION
            end
            function Drag._onInputBegan(
                self: Drag__DARKLUA_TYPE_f,
                inputObject: InputObject,
                guiObject: GuiObject
            )
                if not self._permission or inputObject.UserInputType ~= inputs.MOUSE_INPUT then
                    return
                end

                local inputPosition = inputObject.Position
                local guiPosition = guiObject.AbsolutePosition

                self._dragging = true
                self._startInput = inputObject
                self._startVector = Vector2.new(inputPosition.X - guiPosition.X, inputPosition.Y - guiPosition.Y)
                self._inputChanged = signals.new(UserInputService.InputChanged, function(
                    inputObject: InputObject
                )
                    self:_onInputChanged(inputObject, guiObject)
                end)
            end
            function Drag._onInputChanged(
                self: Drag__DARKLUA_TYPE_f,
                inputObject: InputObject,
                guiObject: GuiObject
            )
                if not self._dragging or not self._permission then
                    return
                end
                if not self._startInput or not self._startVector then
                    return
                end
                if inputObject.UserInputState == inputs.END_INPUT or self._startInput.UserInputState == inputs.END_INPUT then
                    self:_resetState()

                    return
                end
                if inputObject.UserInputType == inputs.MOVE_INPUT then
                    self:_moveObject(inputObject, guiObject)
                end
            end
            function Drag._onInputEnded(self: Drag__DARKLUA_TYPE_f, inputObject: InputObject)
                if inputObject.UserInputType == inputs.MOUSE_INPUT then
                    self:_resetState()
                end
            end
            function Drag._moveObject(
                self: Drag__DARKLUA_TYPE_f,
                inputObject: InputObject,
                guiObject: GuiObject
            )
                if not self._startVector then
                    return
                end

                local viewportSize = currentCamera.ViewportSize
                local insetOffset = GuiService:GetGuiInset()
                local inputPosition = inputObject.Position
                local absoluteSize = guiObject.AbsoluteSize
                local anchorPoint = guiObject.AnchorPoint
                local deltaX = inputPosition.X - self._startVector.X
                local deltaY = inputPosition.Y - self._startVector.Y + insetOffset.Y
                local centerX = deltaX + (absoluteSize.X * anchorPoint.X)
                local centerY = deltaY + (absoluteSize.Y * anchorPoint.Y)
                local scaleX = centerX / viewportSize.X
                local scaleY = centerY / viewportSize.Y
                local scalePosition = UDim2.fromScale(scaleX, scaleY)

                guiObject.Position = scalePosition
                self._lastPosition = scalePosition
            end

            return Drag
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
            local CoreGui = gethui() or cloneref(game:GetService('CoreGui'))
            local rootStyles = __DARKLUA_BUNDLE_MODULES.d()

            __DARKLUA_BUNDLE_MODULES.a()

            return function(props: Props__DARKLUA_TYPE_b): View__DARKLUA_TYPE_a
                local oldIllumina = CoreGui:FindFirstChild('Illumina')

                if oldIllumina then
                    oldIllumina:Destroy()
                end

                local illumina = Instance.new('ScreenGui')

                illumina.Name = 'Illumina'
                illumina.DisplayOrder = 6
                illumina.IgnoreGuiInset = true
                illumina.ResetOnSpawn = false
                illumina.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

                local container = Instance.new('Frame')

                container.Name = 'Container'
                container.AnchorPoint = Vector2.new(0.5, 0.5)
                container.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                container.BorderColor3 = Color3.fromRGB(0, 0, 0)
                container.BorderSizePixel = 0
                container.Position = rootStyles.DEF_POSITION
                container.Size = rootStyles.DEF_SIZE

                local uIStroke = Instance.new('UIStroke')

                uIStroke.Name = 'UIStroke'
                uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uIStroke.Color = Color3.fromRGB(47, 47, 47)
                uIStroke.Parent = container

                local uICorner = Instance.new('UICorner')

                uICorner.Name = 'UICorner'
                uICorner.CornerRadius = UDim.new(0, 10)
                uICorner.Parent = container

                local uIListLayout = Instance.new('UIListLayout')

                uIListLayout.Name = 'UIListLayout'
                uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout.Parent = container

                local header = Instance.new('Frame')

                header.Name = 'Header'
                header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                header.BackgroundTransparency = 1
                header.BorderColor3 = Color3.fromRGB(0, 0, 0)
                header.BorderSizePixel = 0
                header.Size = UDim2.new(1, 0, 0, 50)

                local uIListLayout1 = Instance.new('UIListLayout')

                uIListLayout1.Name = 'UIListLayout'
                uIListLayout1.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout1.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout1.Parent = header

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
                close.InputSink = Enum.InputSink.None
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

                local expand = Instance.new('TextButton')

                expand.Name = 'Expand'
                expand.AutoButtonColor = false
                expand.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                expand.BackgroundTransparency = 1
                expand.BorderColor3 = Color3.fromRGB(0, 0, 0)
                expand.BorderSizePixel = 0
                expand.InputSink = Enum.InputSink.None
                expand.LayoutOrder = 2
                expand.Size = UDim2.fromOffset(40, 40)
                expand.Text = ''
                expand.TextColor3 = Color3.fromRGB(0, 0, 0)
                expand.TextSize = 14

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
                icon1.Parent = expand
                expand.Parent = header

                local minimize = Instance.new('TextButton')

                minimize.Name = 'Minimize'
                minimize.AutoButtonColor = false
                minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                minimize.BackgroundTransparency = 1
                minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
                minimize.BorderSizePixel = 0
                minimize.InputSink = Enum.InputSink.None
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

                local group = Instance.new('Frame')

                group.Name = 'Group'
                group.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                group.BackgroundTransparency = 1
                group.BorderColor3 = Color3.fromRGB(0, 0, 0)
                group.BorderSizePixel = 0
                group.LayoutOrder = 2
                group.Size = UDim2.new(1, 0, 1, -51)

                local uIListLayout2 = Instance.new('UIListLayout')

                uIListLayout2.Name = 'UIListLayout'
                uIListLayout2.FillDirection = Enum.FillDirection.Horizontal
                uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
                uIListLayout2.Parent = group

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

                local uIListLayout3 = Instance.new('UIListLayout')

                uIListLayout3.Name = 'UIListLayout'
                uIListLayout3.HorizontalAlignment = Enum.HorizontalAlignment.Center
                uIListLayout3.Padding = UDim.new(0, 10)
                uIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout3.Parent = tabs

                local uIPadding1 = Instance.new('UIPadding')

                uIPadding1.Name = 'UIPadding'
                uIPadding1.PaddingBottom = UDim.new(0, 15)
                uIPadding1.PaddingLeft = UDim.new(0, 15)
                uIPadding1.PaddingRight = UDim.new(0, 15)
                uIPadding1.PaddingTop = UDim.new(0, 15)
                uIPadding1.Parent = tabs
                tabs.Parent = group

                local divider1 = Instance.new('Frame')

                divider1.Name = 'Divider'
                divider1.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                divider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
                divider1.BorderSizePixel = 0
                divider1.LayoutOrder = 1
                divider1.Size = UDim2.new(0, 1, 1, 0)
                divider1.Parent = group

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
                container.Parent = illumina
                illumina.Parent = CoreGui

                return {
                    illumina = illumina,
                    container = container,
                    corner = uICorner,
                    header = header,
                    minimize = minimize,
                    expand = expand,
                    close = close,
                    tabs = tabs,
                    sections = sections,
                }
            end
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
                    self: LinearSpring__DARKLUA_TYPE_h<T>,
                    dampingRatio: number
                )
                    self.d = dampingRatio
                end
                function LinearSpring.setFrequency<T>(
                    self: LinearSpring__DARKLUA_TYPE_h<T>,
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
                function LinearSpring.step<T>(self: LinearSpring__DARKLUA_TYPE_h<T>, dt: number)
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
                    self: RotationSpring__DARKLUA_TYPE_i,
                    value: CFrame
                )
                    self.g = value:Orthonormalize()
                end
                function RotationSpring.setDampingRatio(
                    self: RotationSpring__DARKLUA_TYPE_i,
                    dampingRatio: number
                )
                    self.d = dampingRatio
                end
                function RotationSpring.setFrequency(
                    self: RotationSpring__DARKLUA_TYPE_i,
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

                function RotationSpring.canSleep(self: RotationSpring__DARKLUA_TYPE_i)
                    local sleepP = areRotationsClose(self.p, self.g)
                    local sleepV = self.v.Magnitude < SLEEP_ROTATION_VELOCITY

                    return sleepP and sleepV
                end
                function RotationSpring.step(self: RotationSpring__DARKLUA_TYPE_i, dt: number): CFrame
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
            local PSEUDO_PROPERTIES: PropertyOverride__DARKLUA_TYPE_j = {
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
            return {
                DEFAULT = {
                    DAMPING_RATIO = 1,
                    FREQUENCY = 7,
                },
            }
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
            local Drag = __DARKLUA_BUNDLE_MODULES.f()
            local rootStyles = __DARKLUA_BUNDLE_MODULES.d()

            __DARKLUA_BUNDLE_MODULES.a()

            local rootView = __DARKLUA_BUNDLE_MODULES.g()
            local signals = __DARKLUA_BUNDLE_MODULES.e()
            local spring = __DARKLUA_BUNDLE_MODULES.h()
            local motions = __DARKLUA_BUNDLE_MODULES.i()
            local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
            local FREQUENCY = motions.DEFAULT.FREQUENCY
            local Root = {}

            Root.__index = Root

            function Root.new(props: Props__DARKLUA_TYPE_b)
                local self = setmetatable({
                    view = rootView(props),
                    _expanded = false,
                    _lastSize = rootStyles.DEF_SIZE,
                }, Root)::Root__DARKLUA_TYPE_k

                self._drag = Drag.new(self.view.container, self.view.header)

                signals.new(self.view.minimize.MouseButton1Click, function()
                    self:_minimize()
                end)
                signals.new(self.view.expand.MouseButton1Click, function()
                    self:_expand()
                end)
                signals.new(self.view.close.MouseButton1Click, function()
                    self.view.illumina:Destroy()
                end)
                signals.new(self.view.illumina.AncestryChanged, function()
                    if not self.view.illumina.Parent then
                        signals.clear()
                        props.destroyed()
                    end
                end)

                return self
            end
            function Root._minimize(self: Root__DARKLUA_TYPE_k)
                self.view.illumina.Enabled = not self.view.illumina.Enabled
            end
            function Root._expand(self: Root__DARKLUA_TYPE_k, state: boolean?)
                self._expanded = if state ~= nil then state else not self._expanded

                self._drag:setPermission(not self._expanded)

                local position = self._expanded and rootStyles.DEF_POSITION or self._drag:getLastPosition()
                local size = self._expanded and rootStyles.MAX_SIZE or self._lastSize
                local corner = self._expanded and rootStyles.MIN_CORNER or rootStyles.MAX_CORNER

                spring.target(self.view.container, DAMPING_RATIO, FREQUENCY, {
                    Position = position,
                    Size = size,
                })
                spring.target(self.view.corner, DAMPING_RATIO, FREQUENCY, {CornerRadius = corner})
            end

            return Root
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
            return nil
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
            return nil
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
            return nil
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
            return {
                DEFAULT = {
                    BUTTON_COLOR = Color3.fromRGB(16, 16, 16),
                },
                HOVERED = {
                    BUTTON_COLOR = Color3.fromRGB(20, 20, 20),
                },
            }
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
            __DARKLUA_BUNDLE_MODULES.k()

            return function(props: Props__DARKLUA_TYPE_n, section: ScrollingFrame): View__DARKLUA_TYPE_l
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
                title.Text = props.title
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
                text.Text = props.description
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
            return {
                PADDING = 15,
                GAP = 15,
            }
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
            local TextService = game:GetService('TextService')
            local spacing = __DARKLUA_BUNDLE_MODULES.p()
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
            local function scaleComponent(
                component: Frame | TextButton,
                description: {frame: Frame, text: TextLabel}
            )
                local textSize = getTextSize(description.text.Text, description.frame.AbsoluteSize.X, math.huge)

                description.text.Size = textSize
                description.frame.Size = UDim2.new(1, 0, 0, textSize.Y.Offset)

                local componentHeight = getComponentSize(component, 'Y', spacing.PADDING, spacing.GAP)

                component.Size = UDim2.new(1, 0, 0, componentHeight)
            end

            return {
                getTextSize = getTextSize,
                getComponentSize = getComponentSize,
                scaleComponent = scaleComponent,
            }
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
            local buttonStyles = __DARKLUA_BUNDLE_MODULES.n()

            __DARKLUA_BUNDLE_MODULES.k()

            local buttonView = __DARKLUA_BUNDLE_MODULES.o()
            local scaling = __DARKLUA_BUNDLE_MODULES.q()
            local signals = __DARKLUA_BUNDLE_MODULES.e()
            local spring = __DARKLUA_BUNDLE_MODULES.h()
            local motions = __DARKLUA_BUNDLE_MODULES.i()
            local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
            local FREQUENCY = motions.DEFAULT.FREQUENCY
            local Button = {}

            Button.__index = Button

            function Button.new(props: Props__DARKLUA_TYPE_n, section: ScrollingFrame)
                local self: Button__DARKLUA_TYPE_t = setmetatable({
                    view = buttonView(props, section),
                }, Button)

                signals.new(self.view.button.MouseButton1Click, function()
                    if props.activated then
                        props.activated()
                    end
                end)
                signals.new(self.view.button.MouseEnter, function()
                    self:_applyStyle(buttonStyles.HOVERED)
                end)
                signals.new(self.view.button.MouseLeave, function()
                    self:_applyStyle(buttonStyles.DEFAULT)
                end)
                signals.new(self.view.button:GetPropertyChangedSignal('AbsoluteSize'), function(
                )
                    scaling.scaleComponent(self.view.button, self.view.description)
                end)
                scaling.scaleComponent(self.view.button, self.view.description)

                return self
            end
            function Button._applyStyle(self: Button__DARKLUA_TYPE_t, style: Style__DARKLUA_TYPE_m)
                spring.target(self.view.button, DAMPING_RATIO, FREQUENCY, {
                    BackgroundColor3 = style.BUTTON_COLOR,
                })
            end

            return Button
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
            local HttpService = game:GetService('HttpService')

            local function ensureFolderExists(path: string)
                if not isfolder(path) then
                    makefolder(path)
                end
            end
            local function getContent(path: string): any
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
            local file = __DARKLUA_BUNDLE_MODULES.u()
            local ROOT_PATH = 'illumina'
            local PRODUCTS_PATH = `{ROOT_PATH}/products`
            local FILE_TYPE = 'json'
            local Flags = {}

            Flags.__index = Flags

            function Flags.new(product: string)
                local path = `{PRODUCTS_PATH}/{product}.{FILE_TYPE}`

                file.ensureFolderExists(ROOT_PATH)

                local self: Flags__DARKLUA_TYPE_u = setmetatable({
                    _path = path,
                    _flags = file.getContent(path),
                }, Flags)

                return self
            end
            function Flags.getFlag(
                self: Flags__DARKLUA_TYPE_u,
                name: string,
                defaultType: string
            ): any
                local flag = self._flags[name]

                if flag ~= nil and typeof(flag) == defaultType then
                    return flag
                end

                return nil
            end
            function Flags.setFlag(
                self: Flags__DARKLUA_TYPE_u,
                name: string,
                value: any
            )
                self._flags[name] = value

                file.writeData(self._path, self._flags)
            end

            return Flags
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
            __DARKLUA_BUNDLE_MODULES.l()

            return function(props: Props__DARKLUA_TYPE_p, section: ScrollingFrame): View__DARKLUA_TYPE_o
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
                title.Text = props.title
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
                text.Text = props.description
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
            local UserInputService = game:GetService('UserInputService')

            __DARKLUA_BUNDLE_MODULES.v()
            __DARKLUA_BUNDLE_MODULES.l()

            local sliderView = __DARKLUA_BUNDLE_MODULES.w()
            local scaling = __DARKLUA_BUNDLE_MODULES.q()
            local signals = __DARKLUA_BUNDLE_MODULES.e()
            local inputs = __DARKLUA_BUNDLE_MODULES.c()
            local Slider = {}

            Slider.__index = Slider

            function Slider.new(
                props: Props__DARKLUA_TYPE_p,
                flags: Flags__DARKLUA_TYPE_u,
                section: ScrollingFrame
            )
                local self = setmetatable({
                    props = props,
                    flags = flags,
                    view = sliderView(props, section),
                    _value = 0,
                    _dragging = false,
                    _startInput = nil,
                    _inputChanged = nil,
                }, Slider)::Slider__DARKLUA_TYPE_v

                signals.new(self.view.track.hitbox.InputBegan, function(
                    inputObject: InputObject
                )
                    self:_onInputBegan(inputObject)
                end)
                signals.new(self.view.track.hitbox.InputEnded, function(
                    inputObject: InputObject
                )
                    self:_onInputEnded(inputObject)
                end)
                signals.new(self.view.slider:GetPropertyChangedSignal('AbsoluteSize'), function(
                )
                    scaling.scaleComponent(self.view.slider, self.view.description)
                end)
                scaling.scaleComponent(self.view.slider, self.view.description)

                local flag = flags:getFlag(props.flag, 'number')
                local value = if flag ~= nil then flag else props.value

                self:changeValue(value, false)

                return self
            end
            function Slider.changeValue(
                self: Slider__DARKLUA_TYPE_v,
                value: number,
                difference: boolean
            )
                local clamped = math.clamp(value, self.props.min, self.props.max)
                local range = self.props.max - self.props.min
                local offset = clamped - self.props.min
                local percentage = offset / range

                if difference and self._value == clamped then
                    return
                end

                self._value = clamped

                self:_applyTrack(percentage)

                self.view.value.Text = tostring(clamped)

                self.flags:setFlag(self.props.flag, clamped)

                if self.props.changed then
                    self.props.changed(clamped)
                end
            end
            function Slider._resetState(self: Slider__DARKLUA_TYPE_v)
                self._dragging = false
                self._startInput = nil

                if self._inputChanged then
                    self._inputChanged()
                end
            end
            function Slider._onInputBegan(
                self: Slider__DARKLUA_TYPE_v,
                inputObject: InputObject
            )
                if inputObject.UserInputType ~= inputs.MOUSE_INPUT then
                    return
                end

                self._dragging = true
                self._startInput = inputObject
                self._inputChanged = signals.new(UserInputService.InputChanged, function(
                    inputObject: InputObject
                )
                    self:_onInputChanged(inputObject)
                end)
            end
            function Slider._onInputChanged(
                self: Slider__DARKLUA_TYPE_v,
                inputObject: InputObject
            )
                if not self._dragging or not self._startInput then
                    return
                end
                if inputObject.UserInputState == inputs.END_INPUT or self._startInput.UserInputState == inputs.END_INPUT then
                    self:_resetState()

                    return
                end
                if inputObject.UserInputType == inputs.MOVE_INPUT then
                    self:_updateFromInput(inputObject)
                end
            end
            function Slider._onInputEnded(
                self: Slider__DARKLUA_TYPE_v,
                inputObject: InputObject
            )
                if inputObject.UserInputType == inputs.MOUSE_INPUT then
                    self:_resetState()
                end
            end
            function Slider._updateFromInput(
                self: Slider__DARKLUA_TYPE_v,
                inputObject: InputObject
            )
                local track = self.view.track.frame
                local relative = inputObject.Position.X - track.AbsolutePosition.X
                local percentage = math.clamp(relative / track.AbsoluteSize.X, 0, 1)
                local range = self.props.max - self.props.min
                local raw = self.props.min + percentage * range
                local rounded = math.round(raw * self.props.division) / self.props.division

                self:changeValue(rounded, true)
            end
            function Slider._applyTrack(self: Slider__DARKLUA_TYPE_v, percentage: number)
                local circleSize = self.view.track.circle.AbsoluteSize.X
                local trackWidth = circleSize / 2 - circleSize * percentage

                self.view.track.fill.Size = UDim2.new(percentage, trackWidth, 1, 0)
            end

            return Slider
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
            return {
                DISABLED = {
                    THUMB_COLOR = Color3.fromRGB(47, 47, 47),
                    CIRCLE_COLOR = Color3.fromRGB(126, 126, 126),
                    CIRCLE_POSITION = UDim2.fromScale(0, 0.5),
                    CIRCLE_ANCHOR_POINT = Vector2.new(0, 0.5),
                },
                ENABLED = {
                    THUMB_COLOR = Color3.fromRGB(255, 255, 255),
                    CIRCLE_COLOR = Color3.fromRGB(34, 34, 34),
                    CIRCLE_POSITION = UDim2.fromScale(1, 0.5),
                    CIRCLE_ANCHOR_POINT = Vector2.new(1, 0.5),
                },
            }
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
            __DARKLUA_BUNDLE_MODULES.m()

            return function(props: Props__DARKLUA_TYPE_s, section: ScrollingFrame): View__DARKLUA_TYPE_q
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
                title.Text = props.title
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
                text.Text = props.description
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
            __DARKLUA_BUNDLE_MODULES.v()

            local switchStyles = __DARKLUA_BUNDLE_MODULES.y()

            __DARKLUA_BUNDLE_MODULES.m()

            local switchView = __DARKLUA_BUNDLE_MODULES.z()
            local scaling = __DARKLUA_BUNDLE_MODULES.q()
            local signals = __DARKLUA_BUNDLE_MODULES.e()
            local spring = __DARKLUA_BUNDLE_MODULES.h()
            local motions = __DARKLUA_BUNDLE_MODULES.i()
            local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
            local FREQUENCY = motions.DEFAULT.FREQUENCY
            local Switch = {}

            Switch.__index = Switch

            function Switch.new(
                props: Props__DARKLUA_TYPE_s,
                flags: Flags__DARKLUA_TYPE_u,
                section: ScrollingFrame
            )
                local self: Switch__DARKLUA_TYPE_w = setmetatable({
                    props = props,
                    flags = flags,
                    view = switchView(props, section),
                    _enabled = false,
                }, Switch)

                signals.new(self.view.switch.MouseButton1Click, function()
                    self:changeState(not self._enabled)
                end)
                signals.new(self.view.switch:GetPropertyChangedSignal('AbsoluteSize'), function(
                )
                    scaling.scaleComponent(self.view.switch, self.view.description)
                end)
                scaling.scaleComponent(self.view.switch, self.view.description)

                local flag = flags:getFlag(props.flag, 'boolean')
                local state = if flag ~= nil then flag else props.enabled

                if state then
                    self:changeState(state)
                end

                return self
            end
            function Switch.changeState(self: Switch__DARKLUA_TYPE_w, state: boolean)
                self._enabled = state

                self:_applyStyle(state and switchStyles.ENABLED or switchStyles.DISABLED)
                self.flags:setFlag(self.props.flag, state)

                if self.props.changed then
                    self.props.changed(state)
                end
            end
            function Switch._applyStyle(self: Switch__DARKLUA_TYPE_w, style: Style__DARKLUA_TYPE_r)
                spring.target(self.view.thumb.frame, DAMPING_RATIO, FREQUENCY, {
                    BackgroundColor3 = style.THUMB_COLOR,
                })
                spring.target(self.view.thumb.circle, DAMPING_RATIO, FREQUENCY, {
                    AnchorPoint = style.CIRCLE_ANCHOR_POINT,
                    BackgroundColor3 = style.CIRCLE_COLOR,
                    Position = style.CIRCLE_POSITION,
                })
            end

            return Switch
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
                DEFAULT = {
                    TAB_TRANSPARENCY = 1,
                    STROKE_TRANSPARENCY = 1,
                    ICON_COLOR = Color3.fromRGB(89, 89, 89),
                    TEXT_COLOR = Color3.fromRGB(89, 89, 89),
                },
                HOVERED = {
                    TAB_TRANSPARENCY = 1,
                    STROKE_TRANSPARENCY = 1,
                    ICON_COLOR = Color3.fromRGB(157, 157, 157),
                    TEXT_COLOR = Color3.fromRGB(157, 157, 157),
                },
                SELECTED = {
                    TAB_TRANSPARENCY = 0,
                    STROKE_TRANSPARENCY = 0,
                    ICON_COLOR = Color3.fromRGB(207, 207, 207),
                    TEXT_COLOR = Color3.fromRGB(207, 207, 207),
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

            local DEFAULT_ICON = 'rbxassetid://73851699179305'

            return function(props: Props__DARKLUA_TYPE_e, parent: ScrollingFrame): View__DARKLUA_TYPE_c
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
                title.Text = props.title
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
                icon.Image = props.icon or DEFAULT_ICON
                icon.ImageColor3 = Color3.fromRGB(89, 89, 89)
                icon.Position = UDim2.fromScale(0.5, 0.5)
                icon.Size = UDim2.fromOffset(20, 20)
                icon.Parent = tab
                tab.Parent = parent

                return {
                    tab = tab,
                    stroke = uIStroke,
                    title = title,
                    icon = icon,
                }
            end
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
            __DARKLUA_BUNDLE_MODULES.k()
            __DARKLUA_BUNDLE_MODULES.a()
            __DARKLUA_BUNDLE_MODULES.l()
            __DARKLUA_BUNDLE_MODULES.m()
            __DARKLUA_BUNDLE_MODULES.b()

            local Button = __DARKLUA_BUNDLE_MODULES.r()
            local Label = __DARKLUA_BUNDLE_MODULES.s()
            local Section = __DARKLUA_BUNDLE_MODULES.t()
            local Slider = __DARKLUA_BUNDLE_MODULES.x()
            local Switch = __DARKLUA_BUNDLE_MODULES.A()

            __DARKLUA_BUNDLE_MODULES.v()

            local tabStyles = __DARKLUA_BUNDLE_MODULES.B()
            local tabView = __DARKLUA_BUNDLE_MODULES.C()
            local signals = __DARKLUA_BUNDLE_MODULES.e()
            local spring = __DARKLUA_BUNDLE_MODULES.h()
            local motions = __DARKLUA_BUNDLE_MODULES.i()
            local DAMPING_RATIO = motions.DEFAULT.DAMPING_RATIO
            local FREQUENCY = motions.DEFAULT.FREQUENCY
            local Tab = {}

            Tab.__index = Tab

            function Tab.new(
                props: Props__DARKLUA_TYPE_e,
                flags: Flags__DARKLUA_TYPE_u,
                rootView: View__DARKLUA_TYPE_a,
                tabs: {Tab__DARKLUA_TYPE_x}
            )
                local self: Tab__DARKLUA_TYPE_x = setmetatable({
                    flags = flags,
                    view = tabView(props, rootView.tabs),
                    _tabs = tabs,
                    _selected = false,
                    _section = Section(rootView.sections),
                }, Tab)

                signals.new(self.view.tab.MouseButton1Click, function()
                    self:select()
                end)
                signals.new(self.view.tab.MouseEnter, function()
                    if not self._selected then
                        self:_applyStyle(tabStyles.HOVERED)
                    end
                end)
                signals.new(self.view.tab.MouseLeave, function()
                    if not self._selected then
                        self:_applyStyle(tabStyles.DEFAULT)
                    end
                end)

                return self
            end
            function Tab.select(self: Tab__DARKLUA_TYPE_x)
                for _, tab in self._tabs do
                    local selected = tab.view == self.view
                    local style = selected and tabStyles.SELECTED or tabStyles.DEFAULT

                    tab:_applyStyle(style)

                    tab._selected = selected
                    tab._section.Visible = selected
                end
            end
            function Tab.createLabel(self: Tab__DARKLUA_TYPE_x, title: string)
                return Label(title, self._section)
            end
            function Tab.createButton(self: Tab__DARKLUA_TYPE_x, props: Props__DARKLUA_TYPE_n)
                return Button.new(props, self._section)
            end
            function Tab.createSwitch(self: Tab__DARKLUA_TYPE_x, props: Props__DARKLUA_TYPE_s)
                return Switch.new(props, self.flags, self._section)
            end
            function Tab.createSlider(self: Tab__DARKLUA_TYPE_x, props: Props__DARKLUA_TYPE_p)
                return Slider.new(props, self.flags, self._section)
            end
            function Tab._applyStyle(self: Tab__DARKLUA_TYPE_x, style: Style__DARKLUA_TYPE_d)
                spring.target(self.view.tab, DAMPING_RATIO, FREQUENCY, {
                    BackgroundTransparency = style.TAB_TRANSPARENCY,
                })
                spring.target(self.view.stroke, DAMPING_RATIO, FREQUENCY, {
                    Transparency = style.STROKE_TRANSPARENCY,
                })
                spring.target(self.view.icon, DAMPING_RATIO, FREQUENCY, {
                    ImageColor3 = style.ICON_COLOR,
                })
                spring.target(self.view.title, DAMPING_RATIO, FREQUENCY, {
                    TextColor3 = style.TEXT_COLOR,
                })
            end

            return Tab
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
end

__DARKLUA_BUNDLE_MODULES.a()
__DARKLUA_BUNDLE_MODULES.b()

local Root = __DARKLUA_BUNDLE_MODULES.j()
local Tab = __DARKLUA_BUNDLE_MODULES.D()
local Flags = __DARKLUA_BUNDLE_MODULES.v()
local Library = {}

Library.__index = Library

type Library = setmetatable<{flags: Flags__DARKLUA_TYPE_u, root: Root__DARKLUA_TYPE_k, tabs: {Tab__DARKLUA_TYPE_x}}, typeof(Library)>

function Library.new(props: Props__DARKLUA_TYPE_b)
    local self: Library = setmetatable({
        flags = Flags.new(props.product),
        root = Root.new(props),
        tabs = {},
    }, Library)

    return self
end
function Library.createTab(self: Library, props: Props__DARKLUA_TYPE_e)
    local tab = Tab.new(props, self.flags, self.root.view, self.tabs)

    table.insert(self.tabs, tab)

    if #self.tabs == 1 then
        tab:select()
    end

    return tab
end

return Library
