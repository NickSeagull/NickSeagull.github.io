import * as fse from "fs-extra";

const ymlTemplate = (title: string) => `
title: ${title}

header:
  - /_shared/header.md

main:
  - body.md

footer:
  - /_shared/footer.md
`;

async function copyAssets() {
  await fse.mkdirp("build/assets");
  await fse.copy("assets", "build/assets", { overwrite: true });
}

async function copyCode() {
  await fse.mkdirp("build/js/code");
  await fse.copy("build/js/code", "build/code", { overwrite: true });
}

async function copyContent() {
  await fse.mkdirp("build/content/_shared");
  await fse.copy("content/_shared", "build/content/_shared");
  const files = await fse.readdir("content");
  for (const file of files) {
    if (file === "_shared") continue;
    const filename = file.slice(0, -3);
    const pagePath = `build/content/${filename}`;
    const content = await fse.readFile(`content/${file}`);
    await fse.mkdirp(pagePath);
    await fse.writeFile(`${pagePath}/index.yml`, ymlTemplate(filename));
    await fse.writeFile(`${pagePath}/body.md`, content);
  }
}

export async function main() {
  console.log("Copying assets...");
  await copyAssets();
  console.log("Copying code...");
  await copyCode();
  console.log("Copying content...");
  await copyContent();
}

main();
