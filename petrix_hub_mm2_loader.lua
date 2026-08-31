-- ============================================================
--  PETRIX HUB (MM2) - loadstring direto
--  Rebrand de: capyb2222/mm2-script (Kitty Hub)
--
--  Uso:  loadstring(game:HttpGet("RAW_URL_ABAJO"))()
--
--  Este loader carrega o petrix_hub_mm2.lua (o módulo MM2
--  completo, rebranded para PETRIX HUB) de um URL estatico.
--  Nao precisa de python localhost nem servidor local.
--
-- ============================================================

local URL = "https://raw.githubusercontent.com/junin275/petrix-hub-mm2/main/petrix_hub_mm2.lua"

local function carregar()
    local ok, resp = pcall(function()
        return game:HttpGet(URL, true)
    end)
    if not ok then
        warn("[Petrix Hub] falha ao baixar: " .. tostring(resp))
        return false
    end
    if type(resp) ~= "string" or #resp < 1000 then
        warn("[Petrix Hub] resposta invalida (tam: " .. tostring(#resp) .. ")")
        return false
    end
    local ini = resp:sub(1, 200):lower()
    if ini:find("<!doctype") or ini:find("<html") then
        warn("[Petrix Hub] URL devolveu HTML (arquivo nao esta la?)")
        return false
    end
    local chunk, cerr = loadstring(resp, "=PetrixHub-MM2")
    if not chunk then
        warn("[Petrix Hub] falha de compilacao: " .. tostring(cerr))
        return false
    end
    local okRun, runErr = pcall(chunk)
    if not okRun then
        warn("[Petrix Hub] erro ao executar: " .. tostring(runErr))
        return false
    end
    print("[Petrix Hub] carregado (" .. #resp .. " bytes)")
    return true
end

if not game:IsLoaded() then game.Loaded:Wait() end
carregar()