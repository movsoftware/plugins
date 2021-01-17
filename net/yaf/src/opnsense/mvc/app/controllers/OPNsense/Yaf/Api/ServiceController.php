<?php


namespace OPNsense\Yaf\Api;

use OPNsense\Base\ApiMutableServiceControllerBase;
use OPNsense\Core\Backend;
use OPNsense\Yaf\General;

/**
 * Class ServiceController
 * @package OPNsense\Yaf
 */
class ServiceController extends ApiMutableServiceControllerBase
{
    protected static $internalServiceClass = '\OPNsense\Yaf\General';
    protected static $internalServiceTemplate = 'OPNsense/Yaf';
    protected static $internalServiceEnabled = 'enabled';
    protected static $internalServiceName = 'yaf';
}
