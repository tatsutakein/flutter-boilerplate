#! /bin/bash

echo ""
echo "    ##      #####    ####     ##### ";
echo "   ####    ##   ##    ##     ##   ## ";
echo "  ##  ##   #          ##     # ";
echo "  ##  ##    #####     ##      ##### ";
echo "  ######        ##    ##          ## ";
echo "  ##  ##   ##   ##    ##     ##   ## ";
echo "  ##  ##    #####    ####     ##### ";
echo ""

# Project root directory
FILE_PATH=$(dirname "$0")
cd "$FILE_PATH/../" || exit

echo "🚀 Bootstrap start"
echo "🚀 Working directory: $(pwd)"

##############################################################################
##
##  Git commit message
##
##############################################################################
echo ""
echo "🚀 Git commit message: Start"
if type git >/dev/null 2>&1; then
  git config commit.template tools/git/message
  echo "🎉 Git commit message: git config commit.template is $(pwd)/$(git config commit.template)"
  echo "✅ Git commit message: Success"
else
  echo "⚠️ Git commit message: Skip the git command as it could not be found."
fi

##############################################################################
##
##  mise
##
##############################################################################
echo ""
echo "🚀 mise install: Start"
if type mise >/dev/null 2>&1; then
  if mise install; then
    echo "✅ mise install: Success"
  else
    echo "🚫 mise install: Failed"
  fi
else
  echo "⚠️ mise install: Skip mise because it could not be found."
  echo "⚠️ mise install: See https://mise.jdx.dev/getting-started.html for installation."
fi

##############################################################################
##
##  Melos
##
##############################################################################
echo ""
echo "🚀 Melos bootstrap: Start"
if type melos >/dev/null 2>&1; then
  if melos bs; then
    echo "✅ Melos bootstrap: Success"
  else
    echo "🚫 Melos bootstrap: Failed"
  fi
else
  echo "⚠️ Melos bootstrap: Skip melos because it could not be found."
  echo "⚠️ Melos bootstrap: See https://melos.invertase.dev/getting-started for installation."
fi

##############################################################################
##
##  mason
##
##############################################################################
echo ""
echo "🚀 mason get: Start"
if type mason >/dev/null 2>&1; then
  if mason get; then
    echo "✅ mason get: Success"
  else
    echo "🚫 mason get: Failed"
  fi
else
  echo "⚠️ mason get: Skip mason because it could not be found."
  echo "⚠️ mason get: See https://docs.brickhub.dev/installing for installation."
fi

##############################################################################
##
##  Finish
##
##############################################################################
echo ""
echo "🚀 Bootstrap finished"
