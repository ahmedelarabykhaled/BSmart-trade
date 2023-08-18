<?php

namespace App\Http\Controllers\Admin;

use App\City;
use App\Customer;
use App\Governement;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Facades\Voyager;

class CustomersCustomController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{

    /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());

        event(new BreadDataAdded($dataType, $data));

        /**
         * add the new customer code
         */
        $governorate_id = $request->governorate_id;
        $city_id = $request->city_id;

        $governorate = Governement::find($governorate_id);
        $city = City::find($city_id);

        // pretty_print([
        //     'governate_id' => $governorate_id,
        //     'governate' => $governorate->code,
        //     'city_id' => $city_id,
        //     'city' => $city->code,
        // ]);die;
        $governorate_code = isset($governorate->code) ? $governorate->code : '';
        $city_code = isset($city->code) ? $city->code : '';
        $precode = ( $governorate_code !== '' && $city_code !== '' ) ? $governorate_code . $city_code . '-' : '';
        $customer = Customer::latest()->first();
        Customer::find($customer->id)->update(['code' => $precode . 'C' . $customer->id]);

        if (!$request->has('_tagging')) {
            if (auth()->user()->can('browse', $data)) {
                $redirect = redirect()->route("voyager.{$dataType->slug}.index");
            } else {
                $redirect = redirect()->back();
            }

            return $redirect->with([
                'message'    => __('voyager::generic.successfully_added_new') . " {$dataType->getTranslatedAttribute('display_name_singular')}",
                'alert-type' => 'success',
            ]);
        } else {
            return response()->json(['success' => true, 'data' => $data]);
        }
    }
}
