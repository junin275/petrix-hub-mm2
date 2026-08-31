# PETRIX HUB · MM2

Rebrand de **Kitty Hub** (`capyb2222/mm2-script`) para **PETRIX HUB**.
Murder Mystery 2 — script de **arquivo único editável** (sem `build.py`, sem localhost).

## Como usar

No executor (dentro do MM2, PlaceId `142823291`):

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/junin275/petrix-hub-mm2/main/petrix_hub_mm2.lua"))()
```

Atalhos padrão (rebindáveis no menu):

| Tecla | Ação |
|---|---|
| `X` | Abre/fecha o menu |
| `C` | Aimbot |
| `N` | Noclip |
| `F` | Fly (WASD, Espaço sobe, Shift desce) |

## Arquivos

| Arquivo | Descrição |
|---|---|
| `petrix_hub_mm2.lua` | O script completo em **um único arquivo** (editável à mão). |
| `petrix_hub_mm2_loader.lua` | Loader com validação (detecta HTML/erros) — opcional. |

## Editar

O script é **um único `.lua`**. Os 14 módulos originais estão separados por
comentários `--- src/mm2/... ---` dentro do arquivo. Edite direto e rode de novo
— **não precisa compilar nada**.

- Re-rodar o loadstring é seguro (une/desmonta a instância anterior sozinho).

## Créditos

Estrutura e nomes de remotes baseados em `capyb2222/mm2-script` (Kitty Hub) e YARHM.
