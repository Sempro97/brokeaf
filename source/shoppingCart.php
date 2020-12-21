<?php
    class shoppingCart {
        protected $id;
        protected $items = array();

        public function add_item() {
            
        }

        public function get_items() {
            
        }

        public function isEmpty()
	    {
            return (empty($this->items));
        }       
    }
?>
