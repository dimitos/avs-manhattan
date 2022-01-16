<?
    /**
     * Класс данных для метатегов
     */
    class Meta
    {
        public $title = "БЦ «Манхэттен»";
        public $description = "БЦ «Манхэттен»";
        public $keywords = "БЦ «Манхэттен»";
        public $image = "/img/og-image.png";
        public $h1 = "БЦ «Манхэттен»";
        public $url;

        /**
         * Meta constructor
         */
        public function __construct()
        {
            $this->url = get_current_url(false);
        }

    }
