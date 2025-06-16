# Extra bits

## ignore-zoom.json
Use this to disable Cmd-[Minus] and Cmd-[Plus] to avoid stupid zoom keybinds
`--global-shortcuts ignore-zoom.json`
**IT WILL DISABLE THIS SYSTEMWIDE GLGLLARRGHGHGLLL**

## nativefier.windows.js
Use this to remember window positions. Taken from the docs (such as they are).
```
--inject nativefier.windows.js
```

## nativefier.ignore-zoom.js
Use this to __actually__ disable zoom keybinds.
```
--inject nativefier.ignore-zoom.js
```
Thx [actual dude](https://github.com/electron/electron/issues/8793#issuecomment-648307765) who waded through all the broken fucked up non-solutions that Electron themselves keep murdering. This is the thing that keeps accidental Cmd-Minus from firing. So that, y'know, you can type Option-Shift-Minus without fear of blowing up the window.
