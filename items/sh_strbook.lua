ITEM.name = "Искусство Бокса."
ITEM.description = "Книга, которая увеличивает вашу силу на 5 очков при использовании."
ITEM.uniqueID = "strbook"
ITEM.model = "models/props_lab/binderblue.mdl"

ITEM.functions.Use = {
    name = "Прочитать",
    tip = "useTip",
    icon = "icon16/book_open.png",
    OnRun = function(item)
        local client = item.player
        if IsValid(client) then
            local character = client:GetCharacter()
            local strSkill = character:GetAttribute("str", 0)
            character:SetAttrib("str", strSkill + 5)
        end
        return true
    end,
}

