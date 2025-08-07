import js from "@eslint/js";
import globals from "globals";
import { defineConfig } from "eslint/config";

export default defineConfig([
  {
    files: ["**/*.{js,mjs,cjs}"],
    plugins: { js },
    extends: ["js/recommended"],
    languageOptions: {
      globals: {
        ...globals.node,      // ✅ Include Node.js globals like `process`
        ...globals.es2021,    // (optional) Include modern JS globals
      },
    },
  },
  {
    files: ["**/*.js"],
    languageOptions: { sourceType: "commonjs" },
  },
]);
