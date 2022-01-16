<?php
    const ROOT = __DIR__;

    include ROOT . "/vendor/autoload.php";
    include ROOT . "/php/constants.php";
    include ROOT . "/php/common.php";

    if (file_exists(ROOT . "/.env")) {
        Dotenv\Dotenv::createImmutable(ROOT)->load();
    } else {
        $_ENV["MODE"] = "prod";
    }

    if ($_ENV["MODE"] === "dev") {
        include ROOT . "/php/display-errors.php";
    }

    $page = get_page();

    if ($page->code === 404) {
        header($_SERVER["SERVER_PROTOCOL"] . " 404 Not Found");
    }

    //Инициализируем шаблонизатор
    $smarty = init_smarty();

    // Рендер страницы
    $smarty->assign([
        "page" => $page,
        "phone" => new Phone("+73433114000"),
        "email" => new Email("order@pecar.ru")
    ])->display($page->view);
