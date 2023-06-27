<?php

if (getenv('VULN', true) === 'on') {
  $vuln = 'vuln';
} elseif (getenv('VULN', true) === 'off') {
  $vuln = 'fix';
} else {
  $vuln = 'vuln';
}

header("Location: app.{$vuln}.php", true, 307);
die();

?>