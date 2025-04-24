import * as path from 'path';

// doooog shiiiiiit
export const DEFAULT_APP_NAME = 'APP';

// Why in the living fuck do I need these constants? WHY? What do we even DO with them?

// Upgrade both DEFAULT_ELECTRON_VERSION and DEFAULT_CHROME_VERSION together, and
//   - upgrade app / package.json / "devDependencies" / "electron"
//   - upgrade       package.json / "devDependencies" / "electron"
// Doing a *major* upgrade? Read https://github.com/nativefier/nativefier/blob/master/HACKING.md#deps-major-upgrading-electron
export const DEFAULT_ELECTRON_VERSION = '35.2.1';
// https://atom.io/download/atom-shell/index.json
// https://www.electronjs.org/releases/stable
export const DEFAULT_CHROME_VERSION = '134.0.6998.179';

// Update each of these periodically
// https://product-details.mozilla.org/1.0/firefox_versions.json
export const DEFAULT_FIREFOX_VERSION = '136.0';

// https://en.wikipedia.org/wiki/Safari_version_history
// Loooooooool
export const DEFAULT_SAFARI_VERSION = {
    majorVersion: 18,
    version: '18.4',
    webkitVersion: '605.1.15',
};

export const ELECTRON_MAJOR_VERSION = parseInt(
    DEFAULT_ELECTRON_VERSION.split('.')[0],
    10,
);
export const PLACEHOLDER_APP_DIR = path.join(__dirname, './../', 'app');
