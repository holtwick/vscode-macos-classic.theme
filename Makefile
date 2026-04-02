package:
	@yarn vsce package

release-vscode:
	@yarn vsce publish
	@echo "Open https://marketplace.visualstudio.com/manage/publishers/huacnlee to manage."

release-ovsx:
	@yarn ovsx publish
	@echo "Open https://open-vsx.org to manage."

release: release-vscode release-ovsx

preview:
	@cp -Rf ./icon-theme ~/.vscode/extensions/huacnlee.theme-macos-classic-*/
	@cp -Rf ./theme ~/.vscode/extensions/huacnlee.theme-macos-classic-*/
	@cp -Rf ./package.json ~/.vscode/extensions/huacnlee.theme-macos-classic-*/
	@echo "Install done, go to VS Code and reload window."
