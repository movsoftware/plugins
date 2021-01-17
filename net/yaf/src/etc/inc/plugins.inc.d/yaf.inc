<?php

function yaf_enabled()
{
    $model = new \OPNsense\Yaf\General();
    return (string)$model->enabled == '1';
}

function yaf_services()
{
    $services = array();

    if (!yaf_enabled()) {
        return $services;
    }

    $services[] = array(
        'description' => gettext('yaf'),
        'configd' => array(
            'restart' => array('yaf restart'),
            'start' => array('yaf start'),
            'stop' => array('yaf stop'),
        ),
        'name' => 'yaf',
        'pid' => '/var/run/yaf/yaf.pid'
    );

    return $services;
}
