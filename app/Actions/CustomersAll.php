<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class CustomersAll extends AbstractAction
{
    public function getTitle()
    {
        return 'كل العملاء';
    }

    public function getIcon()
    {
        return 'voyager-shop';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-success',
        ];
    }

    public function getDefaultRoute()
    {
        return route('customers.index');
    }


    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'customers';
    }

    public function massAction($ids, $comingFrom)
    {
        // Do something with the IDs
        return redirect('admin/customers?hasOrders=all');
        // return redirect($comingFrom);
    }
}
