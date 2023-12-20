ITEM.name = "Физкультура и спорт"
ITEM.description = "Книга, которая увеличивает вашу выносливость на 5 очков при использовании."
ITEM.uniqueID = "engbook"
ITEM.model = "models/props_lab/binderblue.mdl"

ITEM.functions.Use = {
    name = "Прочитать",
    tip = "useTip",
    icon = "icon16/book_open.png",
    OnRun = function(item)
        local client = item.player
        if IsValid(client) then
            local character = client:GetCharacter()
            local engSkill = character:GetAttribute("end", 0)
            character:SetAttrib("end", engSkill + 5)
        end
        return true
    end,
}

