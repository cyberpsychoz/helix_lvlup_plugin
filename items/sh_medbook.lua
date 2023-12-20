ITEM.name = "Медицина для чайников."
ITEM.description = "Книга, которая увеличивает ваш медицинский навык на 5 очков при использовании."
ITEM.uniqueID = "medbook"
ITEM.model = "models/props_lab/binderblue.mdl"

ITEM.functions.Use = {
    name = "Прочитать",
    tip = "useTip",
    icon = "icon16/book_open.png",
    OnRun = function(item)
        local client = item.player
        if IsValid(client) then
            local character = client:GetCharacter()
            local medicalSkill = character:GetAttribute("medical", 0)
            character:SetAttrib("medical", medicalSkill + 5)
        end
        return true
    end,
}

