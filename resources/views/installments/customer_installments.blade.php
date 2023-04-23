<table class="table" id="installmentsTable">
    <thead>
        <th>id</th>
        <th>amount</th>
        <th>due date</th>
        <th>partially paid</th>
        <th>partially_paid_amout</th>
        <th>penalty_amount</th>
        <th>paid_penalty</th>
        <th>paid_penalty_date</th>
        <th>status</th>
        <th>created_at</th>
        <th>action</th>
    </thead>
    <tbody>
        @foreach ($customer_installments as $customer_installment)
            <tr>
                <td>{{ $customer_installment->id }}</td>
                <td>{{ $customer_installment->amount }}</td>
                <td>{{ $customer_installment->due_date }}</td>
                <td>{{ $customer_installment->partially_paid }}</td>
                <td>{{ $customer_installment->partially_paid_amount }}</td>
                <td>{{ $customer_installment->penalty_amount }}</td>
                <td>{{ $customer_installment->paid_penalty }}</td>
                <td>{{ $customer_installment->paid_penalty_date }}</td>
                <td>{{ $customer_installment->status }}</td>
                <td>{{ $customer_installment->created_at }}</td>
                <td>
                    @if ($customer_installment->status !== 'paid')
                        {{-- <a href="{{ url('pay') }}" class="btn btn-primary">pay</a> --}}
                        <form action="{{ route('pay_installment_form', $customer_installment->id) }}" method="get">
                            <button type="submit" class="btn btn-success">pay</button>
                        </form>
                    @else
                        <button type="button" disabled class="btn btn-warning">paid</button>
                    @endif
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

<script>
    $('#installmentsTable').DataTable();
</script>
