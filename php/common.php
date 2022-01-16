<?php
    // Дефолная кодировка
    mb_internal_encoding("UTF-8");

    // Дефолтная временная зона
    date_default_timezone_set("Europe/Moscow");

    // Автоматическая загрузка классов из директории /php/classes
    spl_autoload_register(function($class_name) {
        $ext = ".php";
        $folder = ROOT . "/php/classes";
        $class_name = str_replace("_" , DIRECTORY_SEPARATOR, $class_name);

        $file_name = $folder . DIRECTORY_SEPARATOR . $class_name;
        $path = $file_name . $ext;

        if (is_readable($file_name . $ext)) {
            include $file_name . $ext;
            return;
        }

        $sub_folders = new DirectoryIterator($folder);

        foreach ($sub_folders as $sub_folder) {
            if ($sub_folder->isDir() && !$sub_folder->isDot()) {
                $file_name = $folder . DIRECTORY_SEPARATOR . $sub_folder . DIRECTORY_SEPARATOR . $class_name;
                $path = $file_name . $ext;

                if (is_readable($path)) {
                    include $path;
                    return;
                }
            }
        }
    });

    // Автоматическое подключение файлов с функциями
    foreach (scandir(ROOT . "/php/functions") as $filename) {
        $path = ROOT . "/php/functions" . '/' . $filename;
        if (is_file($path)) {
            require $path;
        }
    }
