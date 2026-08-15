# bronx.lol UI — مرجع الواجهة البرمجية

مستخرج مباشرة من `library.lua` — كل معامل هنا مقروء من السورس.

## الترتيب الهرمي

```
library:window(props)                      ← النافذة
   ├─ :seperator({name})                   ← عنوان مجموعة في الشريط الجانبي
   └─ :tab({name, tabs, icon})             ← تبويب  (يرجع صفحة لكل اسم في tabs)
        └─ :column({size})                 ← عمود
             └─ :section({name, side, size, icon})
                  ├─ :toggle({...})
                  ├─ :slider({...})
                  ├─ :dropdown({...})
                  ├─ :keybind({...})
                  ├─ :button({...})
                  ├─ :textbox({...})
                  ├─ :label({...})
                  ├─ :list({...})
                  └─ :colorpicker({...})   ← تُربط على toggle او label
```

## المعاملات

### `library:window`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `suffix` | `Suffix / suffix` | `"tech"` |
| `name` | `Name / name` | `"nebula"` |
| `game_name` | `GameInfo / gameInfo / game_info` | `"Milenium for Counter-Strike: Global Offens...` |
| `size` | `Size / size` | `dim2(0` |

### `library:tab`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `Name / name` | `"visuals"` |
| `icon` | `Icon / icon` | `"http://www.roblox.com/asset/?id=6034767608"` |
| `tabs` | `Tabs / tabs` | `{"Main"` |

### `library:seperator`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `Name / name` | `"General"}` |

### `library:column`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `size` | `size` | `1}` |

### `library:sub_tab`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `order` | `order` | `0` |
| `size` | `size` | `1}` |

### `library:section`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `Name / name` | `"section"` |
| `side` | `Side / side` | `"left"` |
| `default` | `Default / default` | `false` |
| `size` | `Size / size` | `self.size or 0.5` |
| `icon` | `Icon / icon` | `"http://www.roblox.com/asset/?id=6022668898"` |
| `fading_toggle` | `Fading / fading` | `false` |

### `library:toggle`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `enabled` | `default` | `false` |
| `name` | `name` | `"Toggle"` |
| `info` | `info` | `nil` |
| `flag` | `flag` | `library:next_flag()` |
| `type` | `type` | `—` |
| `default` | `default` | `false` |
| `folding` | `folding` | `false` |
| `callback` | `callback` | `function() end` |
| `seperator` | `Seperator / seperator` | `false` |

### `library:slider`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `name` | `nil` |
| `suffix` | `suffix` | `""` |
| `flag` | `flag` | `library:next_flag()` |
| `callback` | `callback` | `function() end` |
| `info` | `info` | `nil` |
| `min` | `min / minimum` | `0` |
| `max` | `max / maximum` | `100` |
| `intervals` | `decimal / interval` | `1` |
| `default` | `default` | `10` |
| `value` | `default` | `10` |
| `seperator` | `Seperator / seperator` | `false` |

### `library:dropdown`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `name` | `nil` |
| `info` | `info` | `nil` |
| `flag` | `flag` | `library:next_flag()` |
| `options` | `items` | `{""}` |
| `callback` | `callback` | `function() end` |
| `multi` | `multi` | `false` |
| `scrolling` | `scrolling` | `false` |
| `width` | `width` | `130` |
| `ignore` | `ignore` | `false` |
| `seperator` | `Seperator / seperator` | `false` |
| `default` | `default` | `(cfg.multi and {cfg.items[1]}) or cfg.items...` |

### `library:label`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `enabled` | `enabled` | `nil` |
| `name` | `name` | `"Toggle"` |
| `wrapped` | `wrapped` | `false` |
| `seperator` | `Seperator / seperator` | `false` |
| `info` | `info` | `nil` |

### `library:colorpicker`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `name` | `"Color"` |
| `flag` | `flag` | `library:next_flag()` |
| `color` | `color` | `color(1` |
| `alpha` | `alpha` | `—` |
| `callback` | `callback` | `function() end` |
| `seperator` | `Seperator / seperator` | `false` |

### `library:textbox`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `name` | `"TextBox"` |
| `placeholder` | `holder / holdertext / placeholder / placeholdertext` | `"type here..."` |
| `default` | `default` | `""` |
| `flag` | `flag` | `library:next_flag()` |
| `callback` | `callback` | `function() end` |
| `visible` | `visible` | `true` |

### `library:keybind`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `flag` | `flag` | `library:next_flag()` |
| `callback` | `callback` | `function() end` |
| `name` | `name` | `nil` |
| `ignore_key` | `ignore` | `false` |
| `seperator` | `seperator` | `false` |
| `key` | `key` | `nil` |
| `mode` | `mode` | `"Toggle"` |
| `active` | `default` | `false` |

### `library:button`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `name` | `name` | `"TextBox"` |
| `callback` | `callback` | `function() end` |

### `library:list`

| المعامل | البدائل المقبولة | الافتراضي |
|---|---|---|
| `options` | `options` | `{"1"` |
| `flag` | `flag` | `library:next_flag()` |
| `callback` | `callback` | `function() end` |


## الدوال المرجعة

| العنصر | الدوال |
|---|---|
| `window` | `toggle_menu` |
| `tab` | `open_tab` |
| `section` | `toggle_section` |
| `toggle` | `set` |
| `slider` | `changetext`, `set` |
| `dropdown` | `changetext`, `refresh_options`, `render_option`, `set`, `set_visible` |
| `label` | `set` |
| `colorpicker` | `set`, `set_visible`, `update_color` |
| `textbox` | `set` |
| `keybind` | `modify_mode_color`, `set`, `set_mode`, `set_visible` |
| `settings` | `set_visible` |
| `list` | `refresh_options` |

## الحالة والاعدادات

| | |
|---|---|
| `library.flags[flag]` | القيمة الحالية لاي عنصر له `flag` |
| `library.config_flags[flag]` | دالة التعيين — يستعملها نظام الحفظ |
| `library.priority` | قائمة اللاعبين ذوي الاولوية |
| `library.whitelist` | قائمة المستثنين |
| `library:get_config()` | يرجع كل الاعدادات كـ JSON |
| `library:load_config(json)` | يطبق اعدادات محفوظة |
| `library:update_theme("accent", Color3)` | يغير اللون المميز كليا |
| `library:unload_menu()` | يزيل القائمة ويفصل كل الاتصالات |

## انواع القيم في `flags`

| العنصر | نوع القيمة |
|---|---|
| `toggle` | `boolean` |
| `slider` | `number` |
| `dropdown` (multi = false) | `string` |
| `dropdown` (multi = true) | `{string}` |
| `textbox` | `string` |
| `list` | `string` |
| `keybind` | `{key = EnumItem, mode = "Toggle"/"Hold"/"Always", active = boolean}` |
| `colorpicker` | `{Color = Color3, Transparency = number}` |