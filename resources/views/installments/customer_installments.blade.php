<table class="table" id="installmentsTable">
    <thead>
        <th>id</th>
        <th>amount</th>
        <th>due date</th>
        <th>installment paid amount</th>
        <th>partially paid</th>
        <th>partially paid amout</th>
        <th>penalty amount</th>
        <th>paid penalty</th>
        <th>paid penalty date</th>
        <th>status</th>
        <th>created_at</th>
        <th>action</th>
    </thead>
    <tbody>
        @foreach ($customer_installments as $customer_installment)
            <tr>
                <td>{{ $customer_installment->installment_id }}</td>
                <td>{{ $customer_installment->amount }}</td>
                <td>{{ $customer_installment->due_date }}</td>
                <td>{{ $customer_installment->installment_amount_paid }}</td>
                <td>{{ $customer_installment->partially_paid }}</td>
                <td>{{ $customer_installment->partially_paid_amount }}</td>
                <td>{{ $customer_installment->penalty_amount }}</td>
                <td>{{ $customer_installment->paid_penalty }}</td>
                <td>{{ $customer_installment->paid_penalty_date }}</td>
                <td>{{ $customer_installment->status }}</td>
                <td>{{ $customer_installment->created_at }}</td>
                <td>
                    <form action="{{ route('pay_installment_form', $customer_installment->id) }}" method="get">
                        @if ($customer_installment->status !== 'paid')
                            {{-- <a href="{{ url('pay') }}" class="btn btn-primary">pay</a> --}}
                            <button type="submit" class="btn btn-success">pay</button>
                        @else
                            <button type="submit" class="btn btn-warning">view</button>
                            {{-- <a href="{{ route('pay_installment_form', $customer_installment->id) }}">view</a> --}}
                        @endif
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

<script>
    $('#installmentsTable').DataTable();
</script>
