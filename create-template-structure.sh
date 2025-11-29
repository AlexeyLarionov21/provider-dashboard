#!/bin/bash
# Скрипт для создания структуры папок проекта-шаблона
# 
# ИСПОЛЬЗОВАНИЕ:
#   1. Дать права на выполнение (один раз):
#      chmod +x create-template-structure.sh
#   
#   2. Запустить скрипт:
#      ./create-template-structure.sh
#      или
#      bash create-template-structure.sh

BASE_PATH="app"

# Массив всех путей для создания
DIRECTORIES=(
  # Assets
  "$BASE_PATH/assets/css"
  "$BASE_PATH/assets/images"
  "$BASE_PATH/assets/icons"
  "$BASE_PATH/assets/fonts"
  
  # Layout Components
  "$BASE_PATH/components/layout/Header"
  "$BASE_PATH/components/layout/Sidebar"
  "$BASE_PATH/components/layout/Footer"
  "$BASE_PATH/components/layout/ContentArea"
  
  # Feature Components
  "$BASE_PATH/components/features/Dashboard"
  "$BASE_PATH/components/features/Profile"
  "$BASE_PATH/components/features/Settings"
  
  # UI Components
  "$BASE_PATH/components/features/UI/Buttons"
  "$BASE_PATH/components/features/UI/Inputs"
  "$BASE_PATH/components/features/UI/Cards"
  "$BASE_PATH/components/features/UI/Modals"
  "$BASE_PATH/components/features/UI/Notifications"
  "$BASE_PATH/components/features/UI/Forms"
  "$BASE_PATH/components/features/UI/Tables"
  "$BASE_PATH/components/features/UI/Loaders"
  "$BASE_PATH/components/features/UI/Dropdowns"
  "$BASE_PATH/components/features/UI/Tabs"
  
  # Core Directories
  "$BASE_PATH/composables"
  "$BASE_PATH/layouts"
  "$BASE_PATH/pages/dashboard"
  "$BASE_PATH/pages/profile"
  "$BASE_PATH/pages/settings"
  "$BASE_PATH/types"
  "$BASE_PATH/models"
  "$BASE_PATH/utils"
  "$BASE_PATH/constants"
  "$BASE_PATH/middleware"
  "$BASE_PATH/stores"
  "$BASE_PATH/hooks"
  "$BASE_PATH/config"
  
  # API
  "$BASE_PATH/api/controllers"
  "$BASE_PATH/api/services"
  "$BASE_PATH/api/types"
  
  # Public
  "public/images"
  "public/icons"
)

echo "🚀 Создание структуры папок проекта..."
echo ""

# Создание всех папок одним циклом
CREATED=0
EXISTED=0

for dir in "${DIRECTORIES[@]}"; do
  if [ -d "$dir" ]; then
    echo "  ⏭  $dir (уже существует)"
    ((EXISTED++))
  else
    if mkdir -p "$dir" 2>/dev/null; then
      echo "  ✓   $dir"
      ((CREATED++))
    else
      echo "  ✗   $dir (ошибка создания)"
    fi
  fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✓ Готово! Создано: $CREATED, существовало: $EXISTED"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"



