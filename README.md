# Домашнее задание 3. Автор: Королев Михаил ББИ2508
## Как запускать отчет:
```bash
# Клонируйте репозиторий
git clone https://github.com/darkmeleee/tp_hw3.git

# Соберите и запустите генератор
./run.sh build_generator
./run.sh run_generator

# Соберите и запустите репортер
./run.sh build_reporter
./run.sh run_reporter

# Запустите контейнер с веб-сервером:
./run.sh report_server
```

После запуска контейнера с веб-сервером, в консоль выведется несколько адресов сервера.
Для того, чтобы открыть его в браузере, необходимо нажать Command/Ctrl и кликнуть на адрес 127.0.0.1:5009, или нажать кнопку на всплывающем окне в Codespaces
<img width="1280" height="111" alt="пикча" src="https://github.com/user-attachments/assets/669a35f8-7260-4120-b1ed-8a983c2b7d73" />
<img width="908" height="214" alt="image" src="https://github.com/user-attachments/assets/2e0b8c7c-1abb-4db4-950f-a36320c80095" />

## Использованные источники:
https://medium.com/techcrush/how-to-render-html-file-in-flask-3fbfb16b47f6 - статья о том, как выдавать html страницу в flask
https://medium.com/@oluchukwuedeh0/how-to-dockerize-a-python-script-for-data-processing-from-a-csv-file-a-step-by-step-guide-de77172827fd - монтирование папки



