<?php

require_once 'utilities/bootstrap.php';
session_destroy();
header('Location: index.php');
