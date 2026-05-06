hook.Add("HUDPaint", "AdminTool_Deprecated_Notice", function()
    local text1 = "Вы запустили старую версию AdminTool, она больше не поддерживается."
    local text2 = "Для дальнейшего использования установите новую версию в дискорд-канале «Скачать»."

    surface.SetFont("DermaLarge")
    local w1, h1 = surface.GetTextSize(text1)
    local w2, h2 = surface.GetTextSize(text2)

    local padding = 40
    local boxW = math.max(w1, w2) + padding
    local boxH = h1 + h2 + (padding / 2)

    local startX = (ScrW() - boxW) / 2
    local startY = ScrH() * 0.15

    draw.RoundedBox(8, startX, startY, boxW, boxH, Color(25, 25, 25, 240))
    draw.RoundedBoxEx(8, startX, startY, boxW, 6, Color(255, 60, 60), true, true, false, false)

    draw.SimpleText(text1, "DermaLarge", ScrW() / 2, startY + 15, Color(255, 100, 100), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
    draw.SimpleText(text2, "DermaLarge", ScrW() / 2, startY + 15 + h1, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
end)
