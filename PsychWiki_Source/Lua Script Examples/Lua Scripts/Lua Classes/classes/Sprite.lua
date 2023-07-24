local Sprite = {}

function Sprite:new(tag, path, pos)
     local constructor = setmetatable({}, {__index = self})
     constructor.tag = tag
     constructor.path = path
     constructor.pos = pos

     return constructor
end

function Sprite:addSprite()
     makeLuaSprite(self.tag, self.path, self.pos[1], self.pos[2])
     addLuaSprite(self.tag, self.path)
     precacheImage(self.path)
end

function Sprite:addAnimSprite(animType)
     local animType = animType or 'sparrow'
     makeAnimatedLuaSprite(self.tag, self.path, self.pos[1], self.pos[2], animType)
     addLuaSprite(self.tag, self.path)
     precacheImage(self.path)
end

function Sprite:addGraphic(size, color)
     makeLuaSprite(self.tag, nil, self.pos[1], self.pos[2])
     makeGraphic(self.tag, size[1], size[2], color)
     addLuaSprite(self.tag, self.path)
end

function Sprite:remove()
     setmetatable(self, nil)
end