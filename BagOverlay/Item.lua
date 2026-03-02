-- Item: Get item infos such as the category name or item name

Item = {};

function Item:GetName(item)
    local info = item:GetItemInfo();
    return info and info:GetName() or "";
end

function Item:GetCategoryIndex(item)
    local info = item:GetItemInfo();
    return info and info:GetCategory() or 9999;
end
