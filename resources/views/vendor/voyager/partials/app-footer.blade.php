<footer class="app-footer">
    <div class="site-footer-right">
        @if (rand(1,100) == 100)
            <i class="voyager-rum-1"></i> {{ __('voyager::theme.footer_copyright2') }}
        @else
            {{-- {!! __('voyager::theme.footer_copyright') !!} <a href="{{ url('/') }}" target="_blank">BSmart trade</a> --}}
            Copyright © 2023 <a href="{{ url('/') }}" target="_blank">BSmart trade</a>
        @endif
        
    </div>
</footer>
