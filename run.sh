set -e

case "$1" in
    build_generator)
        echo "сборка образа"
        docker build -f generator/Dockerfile -t csv_generator generator
        echo "образ собран"
        ;;

    run_generator)
        echo "запуск контейнера"
        docker run --rm -v "$(pwd)/data:/app/data" csv_generator
        
        echo "контейнер был запущен"
        ;;

    create_local_data)
        echo "генерация файла для локальной отладки"
        python3 generator/generate.py ./local_data
        
        echo "файл local_data/data.csv успешно создан."
        ;;

    build_reporter)
        echo "сборка образа репортера"
        docker build -f reporter/Dockerfile -t reporter .

        ;;

    run_reporter)
        echo "запуск контейнера с репортером"
        docker run --rm -v "$(pwd)/data:/data" reporter

        ;;

    structure)
        echo "структура проекта:"
        
        find . -not -path '*/.*' -not -path './node_modules*' | sort | while read -r line; do
            clean_line="${line//\//    }"
            echo "${clean_line#./}"
        done
        ;;

    clear_data)
        echo "удаление всех сгенерированных файлов"
        rm -rf data
        mkdir data
        echo "файлы успешно удалены"
        ;;

    inside_generator)
        echo "показ файлов внутри контейнера генерации"
        docker run --rm -v "$(pwd)/data:/app/data" csv_generator ls -la data

        ;;

    inside_reporter)
        echo "показ файлов внутри контейнера репортера"
        docker run --rm -v "$(pwd)/data:/app/data" reporter ls -la data
        
        ;;

    *)
        echo "ошибка: неизвестная команда '$1'"
        exit 1
        ;;
esac