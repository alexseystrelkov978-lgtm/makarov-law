# 🍬 Сайт-конфетка Сергея Макарова

Лендинг: **возврат денег от мошенников** в Казахстане. Гонорар успеха, кейсы, международный контур.

## Основной хостинг (Алексей Стрелков)

| | |
|---|---|
| **Аккаунт GitHub** | `alexseystrelkov978-lgtm` |
| **Репозиторий** | [makarov-law](https://github.com/alexseystrelkov978-lgtm/makarov-law) |
| **Домен** | https://legalconsult.art/ |
| **Зеркало** | https://alexseystrelkov978-lgtm.github.io/makarov-law/ |

Деплой:

```bash
cd "/home/vladymyr/Рабочий стол/rabota"
./deploy-makarov.sh
```

### DNS для `legalconsult.art`

| Тип | Ім'я | Вміст |
|-----|------|--------|
| A | `@` | `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153` |
| CNAME | `www` | **`alexseystrelkov978-lgtm.github.io`** |

GitHub → **makarov-law** → Settings → Pages → Custom domain: `legalconsult.art` → после DNS включить **Enforce HTTPS**.

## Ссылки для клиентов

| Назначение | URL (основной) |
|------------|----------------|
| Консультация | `https://legalconsult.art/konsult.html` |
| Поделиться текстом | `https://legalconsult.art/share.html` |
| Полный сайт | `https://legalconsult.art/` |

Пока домен не резолвится: `https://alexseystrelkov978-lgtm.github.io/makarov-law/konsult.html`

## Зеркало (finmanager063-design)

Резервный репозиторий **finmanager063-design/yrist** — `./deploy-yrist.sh` (токен от finmanager063-design).

## Шаблон для продажи

Папка **`lawyer-demo/`** — копия без Сергея Макарова (Иван Иванов, вымышленные бренды). См. `lawyer-demo/README.md`.

## Контакты на сайте

- Телефон / WhatsApp: **+7 (775) 419-49-17**
- Email: **finmanager063@gmail.com**
- Telegram: **@smakarov_law**

## Локально

```bash
python3 -m http.server 8080
```
