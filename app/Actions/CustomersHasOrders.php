<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class CustomersHasOrders extends AbstractAction
{
    public function getTitle()
    {
        return 'عملاء لهم اوردرات';
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
            'class' => 'btn btn-sm btn-warning',
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
        return redirect('admin/customers?hasOrders=true');
        // return redirect($comingFrom);
    }
}
