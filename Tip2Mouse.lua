local AddOnName, Addon = ...
local TipToMouse= CreateFrame('Frame')

function Addon:OnLoad()
    hooksecurefunc("GameTooltip_SetDefaultAnchor", function(self, parent) self:SetOwner(parent, "ANCHOR_CURSOR") end)
end

-- load the addon
TipToMouse:SetScript("OnEvent", function (self, event, ...)
    if (event == "ADDON_LOADED") then
        Addon:OnLoad()
    end
end)

TipToMouse:RegisterEvent("ADDON_LOADED")

