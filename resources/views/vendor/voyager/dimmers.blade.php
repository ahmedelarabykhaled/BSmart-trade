@php

@endphp


<div class="clearfix container-fluid row">
    {{-- @can('browse', App\Customer::class) --}}
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="panel widget center bgimage"
            style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('images/clients.jpg') }}');">
            <div class="dimmer"></div>
            <div class="panel-content">
                <i class="voyager-file-text"></i>
                <h1 style="color: white;">{{ \App\Customer::get()->count() }}</h1>
                <h4>
                    عميل
                </h4>
                {{-- <p>لديك 2 صفحات في قاعدة البيانات الخاصة بك. انقر على الزر أدناه لعرض جميع الصفحات.</p> --}}
                {{-- <a href="http://localhost/bsmart/public/admin/pages" class="btn btn-primary">عرض جميع العملاء</a> --}}
            </div>
        </div>
    </div>
    {{-- @endcan --}}
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="panel widget center bgimage"
            style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('images/visitor.jpg') }}');">
            <div class="dimmer"></div>
            <div class="panel-content">
                <i class="voyager-file-text"></i>
                <h1 style="color: white;">{{ \App\Visitor::get()->count() }}</h1>
                <h4>
                    زائر
                </h4>
                {{-- <a href="http://localhost/bsmart/public/admin/pages" class="btn btn-primary">عرض جميع الزوار</a> --}}
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="panel widget center bgimage"
            style="margin-bottom:0;overflow:hidden;
            background-image:url('{{ asset('images/installation_request.jpg') }}');">
            <div class="dimmer"></div>
            <div class="panel-content">
                <i class="voyager-file-text"></i>
                <h1 style="color: white;">{{ \App\CustomerInstallmentRequest::get()->count() }}</h1>
                <h4>
                     طلب تقسيط</h4>
                {{-- <a href="http://localhost/bsmart/public/admin/pages" class="btn btn-primary">عرض جميع طلبات التقسيط</a> --}}
            </div>
        </div>
    </div><div class="col-xs-12 col-sm-6 col-md-4">
        <div class="panel widget center bgimage"
            style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('images/traders.jpg') }}');">
            <div class="dimmer"></div>
            <div class="panel-content">
                <i class="voyager-file-text"></i>
                <h1 style="color: white;">{{ \App\Trader::get()->count() }}</h1>
                <h4>
                    تاجر</h4>
                {{-- <a href="http://localhost/bsmart/public/admin/pages" class="btn btn-primary">عرض جميع التجار</a> --}}
            </div>
        </div>
    </div><div class="col-xs-12 col-sm-6 col-md-4">
        <div class="panel widget center bgimage"
            style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('images/customer_request.jpeg') }}');">
            <div class="dimmer"></div>
            <div class="panel-content">
                <i class="voyager-file-text"></i>
                <h1 style="color: white;">{{ \App\CustomerRequest::get()->count() }}</h1>
                <h4>
                     طلب عميل
                </h4>
                {{-- <a href="http://localhost/bsmart/public/admin/pages" class="btn btn-primary">عرض جميع طلبات العملاء</a> --}}
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="panel widget center bgimage"
            style="margin-bottom:0;overflow:hidden;background-image:url('{{ asset('images/steps_actions.jpg') }}');">
            <div class="dimmer"></div>
            <div class="panel-content">
                <i class="voyager-file-text"></i>
                <h1 style="color: white;">{{ \App\StepsAction::get()->count() }} </h1>
                <h4>steps & action</h4>
                {{-- <a href="http://localhost/bsmart/public/admin/pages" class="btn btn-primary">عرض جميع steps & actions</a> --}}
            </div>
        </div>
    </div>
</div>
