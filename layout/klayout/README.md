# KLayout terminal-label display

User preference: preserve original PDK layer colors and styles.
TXM1 (48/0) is original blue #0080ff; TXM2 (49/0) is original gray #c0c0c0.
The earlier yellow/cyan colors and line-width changes were reverted.
Only text-font=0 (Default fixed screen font) and default-font-size=2 (Large)
are customized. The installed startup/menu macro no longer changes any colors.

Installed files:
- Active PDK TR-1um.lyp: terminal-layer styles restored to their original values.
- ~/.klayout/klayoutrc: fixed font settings.
- ~/.klayout/macros/readable_terminals.lym: fixed font startup/menu action.

Save work and restart KLayout to load the persisted styles and font settings.
Existing running windows have not been remotely updated.
Original files are backed up under layout/backups/.
TR-1um-readable.lyp now contains the restored PDK styles.

# Updating imported child cells

Ordinary Import makes independent copies. It does not track the source file.
A static library provides a refreshable link; existing ordinary instances need a
one-time replacement with library instances, preserving placement and wiring.
The installed KLayout 0.30.9 supports `klayout.lib` declarations. Installed in `~/.klayout/klayout.lib`:

```
define("BT", "/home/ishi-kai/balanced-ternary-logic/inverter.gds");
define("BT", "/home/ishi-kai/balanced-ternary-logic/nany.gds");
```

Registration was verified in a fresh KLayout process: BT/inverter and
BT/nany are available, use DBU 0.001 µm, and their imported geometry matches
the source GDS on every layer. See `reports/klayout_libraries.json`.
Restart KLayout after saving existing work to discover the new declarations.
Select BT (not Local), then inverter or nany when placing an instance.
The two same-name declarations merge both GDS sources into one library.
Refreshing BT rereads both files; all-layer geometry equality was checked after refresh.
Previous BT_INV/BT_NANY instances keep their stored geometry, but need their
library changed to BT in instance properties to resume source synchronization.
The existing half_adder.gds instances have not been converted.
Edit/save the source GDS, then File → Refresh Libraries.
Automatic library synchronization is currently disabled in user settings.
KLayout context metadata must be retained when saving to preserve library links.

Official documentation: https://klayout.org/downloads/master/doc-qt5/about/about_libraries.html

# Local editing of a library instance

Select the placed instance in the drawing, then Edit → Selection → Convert To Static Cell.
This creates a static cell and retargets the selected instance. Descend into that
cell to edit it. The original library file and other unconverted instances retain
their links. The converted instance no longer receives library updates.
If an array is selected, its elements share the converted cell.

The separate Edit → Cell → Convert Cell To Static command (with a cell selected
in the Cells tree) retargets all instances of that cell in the layout.
