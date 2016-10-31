#!/usr/bin/env sh

if hash yarn 2>/dev/null; then
	PKG_MGR="yarn"
else
	PKG_MGR="npm"
fi

for dir in $(ls labs); do
	if [ -f "labs/${dir}/package.json" ]; then
		echo "Installing \"${dir}\" lab with ${PKG_MGR}..."
		(cd "labs/${dir}" && ${PKG_MGR} install)
		echo "\n"
	fi
done
