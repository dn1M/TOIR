IncludeFile("Lib\\SDK.lua")

class "Lulu"

function OnLoad()
  if myHero.CharName == "Lulu" then
    __PrintTextGame("Mind Lulu Loading...")
    Lulu()
  end
end

function Lulu:LuluMenu()
  self.menu ="MindLulu"
  self.Use_Combo_Q = self:MenuBool("Use Combo Q",true)
  self.Use_Combo_W = self:MenuBool("Use Combo W",true)
  self.Use_Combo_E = self:MenuBool("Use Combo E",true)
  self.Lane_Q = self:MenuBool("Use LaneClear Q",true)
  self.Lane_W = self:MenuBool("Use LaneClear W",true)
  self.Lane_Mana = self:MenuSliderInt("Min Mana Percent For LaneClear",60)

  self.Use_R_Self = self:MenuBool("Use R On Self",false)
  self.Use_R = self:MenuBool("Use R On Ally",true)

  self.Draw_All = self:MenuBool("Draws",true)
  self.Draw_Q = self:MenuBool("Draw Q Range",true)
  self.Draw_W = self:MenuBool("Draw W Range",true)
  self.Draw_E = self:MenuBool("Draw E Range",true)
  self.Draw_R = self:MenuBool("Draw R Range ",true)

  self.AntiGapclose = self:MenuBool("AntiGapclose W",true)

  self.LaneClear = self:MenuKeyBinding("LaneClear",86)
  self.Combo = self:MenuKeyBinding("Combo",32)
end

function Xerath:OnDrawMenu()
  if Menu_Begin(self.menu) then
    if Menu_Begin("Combo Menu") then
      self.Use_Combo_Q = Menu_Bool("Use Combo Q",self.Use_Combo_Q,self.menu)
      self.Use_Combo_W = Menu_Bool("Use Combo W",self.Use_Combo_W,self.menu)
      self.Use_Combo_E = Menu_Bool("Use Combo E",self.Use_Combo_E,self.menu)
      Menu_End()
    end

    if Menu_Begin("LaneClear Menu") then
      self.Lane_Q = Menu_Bool("Use LaneClear Q",self.Lane_Q,self.menu)
      self.Lane_W = Menu_Bool("Use LaneClear W",self.Lane_W,self.menu)
      self.Lane_Mana = Menu_SliderInt("Min Mana Percent For LaneClear",self.Lane_Mana,0,100,self.menu)
    Menu_End()
    end

    if Menu_Begin("R Menu") then
      self.Use_R_Self = Menu_Bool("Use R On Self",self.Use_R,self.menu)
      self.Use_R = Menu_Bool("Use R On Ally",self.Use_R,self.menu)
    Menu_End()
    end

    if Menu_Begin("Draw Menu") then
      self.Draw_All = Menu_Bool("Draws",self.Draw_All,self.menu)
      self.Draw_Q = Menu_Bool("Draw Q Range",self.Draw_Q,self.menu)
      self.Draw_W = Menu_Bool("Draw W Range",self.Draw_W,self.menu)
      self.Draw_E = Menu_Bool("Draw E Range",self.Draw_E,self.menu)
      self.Draw_R = Menu_Bool("Draw R Range",self.Draw_R,self.menu)
      Menu_End()
    end
   if Menu_Begin("Key Menu") then
          self.Combo = Menu_KeyBinding("Combo", self.Combo, self.menu)
          self.LaneClear = Menu_KeyBinding("LaneClear",self.LaneClear,self.menu)
          Menu_End()
          end
  Menu_End()
  end
end


  -- Spells
  self.Q = Spell({
        				Slot = 0,
                SpellType = Enum.SpellType.SkillShot,  
                SkillShotType = Enum.SkillShotType.Line,
                Delay = 0.25,
                Range = 925,
                Speed = 1450, 
                Width = 120,
                Collision = false,
                Radius = 60,
                Angle = 0,
        })
  
  	self.W = Spell ({
                Slot = 1,
                SpellType = Enum.SpellType.Targetted,  
                SkillShotType = Enum.SkillShotType.Line,
                Delay = 0.25,
                Range = 650,
                Speed = 1000, 
                Width = 0,
                Collision = false,
                Radius = 0,
                Angle = 45,
      })

      self.E = Spell ({
        Slot = 2,
        SpellType = Enum.SpellType.Targetted,  
        SkillShotType = Enum.SkillShotType.Line,
        Delay = 0.25,
        Range = 650,
        Speed = 1000, 
        Width = 0,
        Collision = false,
        Radius = 0,
        Angle = 45,
})

      self.E = Spell ({
        Slot = 3,
        SpellType = Enum.SpellType.Targetted,  
        SkillShotType = Enum.SkillShotType.Circle,
        Delay = 0.25,
        Range = 900,
        Speed = 1000, 
        Width = 300,
        Collision = false,
        Radius = 150,
        Angle = 45,
})

end