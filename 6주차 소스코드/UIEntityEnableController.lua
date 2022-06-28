void ShowToastMessage ()
{
    local toastUIEntity = _EntityService:GetEntityByPath("/ui/.../EntityPath")
    toastUIEntity:SetEnable(true)
}
 
void HideToastMessage ()
{
    local toastUIEntity = _EntityService:GetEntityByPath("/ui/.../EntityPath")
    toastUIEntity:SetEnable(false)
}

void ShowPopupUI ()
{
    local PopupUIEntity = _EntityService:GetEntityByPath("/ui/DefaultGroup/MODImage_1")
    PopupUIEntity:SetEnable(true)
}
 
void HidePopupUI ()
{
    local PopupUIEntity = _EntityService:GetEntityByPath("/ui/DefaultGroup/MODImage_1")
    PopupUIEntity:SetEnable(false)
}