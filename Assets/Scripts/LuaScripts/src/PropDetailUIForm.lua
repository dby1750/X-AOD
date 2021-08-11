---
--- 详情窗口  UI窗体视图层脚本
---

PropDetailUIForm = {}
local this = PropDetailUIForm

local UI_Manager=CS.SUIFW.UIManager
local uiManager=UI_Manager.GetInstance()

local transform
local gameobject

--得到实例
function PropDetailUIForm.GetInstance()
    return this
end

function PropDetailUIForm.Awake(obj)
    print("------- PropDetailUIForm.Awake  -----------");
    gameobject=obj
    transform=obj.transform
end

function PropDetailUIForm.Start(obj)
    this.InitView()
end

function PropDetailUIForm.InitView()
    --查找UI中按钮
    this.CloseBtn=transform:Find("BtnClose")--返回transform
    this.CloseBtn=this.CloseBtn:GetComponent("UnityEngine.UI.Button") --返回Button类型
    this.CloseBtn.onClick:AddListener(this.ProcessBtn_Close)

    
end

function PropDetailUIForm.ProcessBtn_Close()
   
    print("执行到 ProcessBtn_Close")  --开始游戏
    uiManager:CloseUIForms("PropDetailUIForm")
end