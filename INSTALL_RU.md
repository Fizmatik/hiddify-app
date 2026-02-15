# Hiddify v2.5.8 с Custom Routing Rules — установка

Скачать файлы: https://github.com/Fizmatik/hiddify-app/releases/tag/v2.5.8

## Ubuntu / Debian

```bash
wget https://github.com/Fizmatik/hiddify-app/releases/download/v2.5.8/Hiddify-Debian-x64.deb
sudo dpkg -i Hiddify-Debian-x64.deb
sudo apt --fix-broken install   # если будут ошибки зависимостей
```

После установки Hiddify появится в системном меню.

Также доступны: `Hiddify-Linux-x64.AppImage` (универсальный, без установки) и `Hiddify-rpm-x64.rpm` (Fedora/RHEL).

## macOS

1. Скачать `Hiddify-MacOS.dmg`
2. Открыть DMG, перетащить Hiddify в Applications
3. При первом запуске macOS заблокирует приложение — зайти в **Системные настройки → Конфиденциальность и безопасность** и нажать **Всё равно открыть**

Если не помогает, выполнить в терминале:
```bash
xattr -cr /Applications/Hiddify.app
```

Альтернативно: скачать `Hiddify-MacOS-Installer.pkg` и запустить двойным кликом.

## Windows

1. Скачать `Hiddify-Windows-Portable-x64.zip`
2. Распаковать в любую папку
3. Запустить `hiddify.exe`

Windows Defender может предупредить — нажать **Подробнее → Выполнить в любом случае**.

## Android

1. Скачать `Hiddify-Android-arm64.apk` (большинство устройств) или `Hiddify-Android-universal.apk` (если не уверены)
2. Открыть скачанный файл
3. Разрешить установку из неизвестных источников при запросе
4. Установить

**Важно:** если уже установлен Hiddify из Google Play или с официального сайта — сначала удалите его (подписи разные, Android не даст обновить поверх).

## Настройка Custom Routing Rules

После запуска: **Настройки → Параметры конфигурации → Пользовательские правила маршрутизации → "+"**

Для каждого правила можно указать:
- **Домены** — например: `example.com`, `*.google.com`, `geosite:ir`
- **IP** — например: `192.168.1.1`, `geoip:ru`
- **Порт** — например: `80`, `443`
- **Протокол** — например: `http`, `tcp`
- **Направление** — Через прокси / Напрямую / Блокировать
