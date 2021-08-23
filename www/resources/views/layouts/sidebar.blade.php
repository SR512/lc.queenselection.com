<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <div class="h-100">

        <!--- Sidemenu -->
        <div id="sidebar-menu" class="m-2">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li>
                    <a href="calendar" class="waves-effect">
                        <i class="mdi mdi-airplay"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="{{route('customer.index')}}" class="waves-effect">
                        <i class="mdi mdi-account"></i>
                        <span>Customer</span>
                    </a>
                </li>
                <li class="menu-title">Product management</li>
                <li><a href="{{route('attribute.index')}}">Attribute</a></li>
                <li><a href="{{route('product.index')}}">Product</a></li>


            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->
