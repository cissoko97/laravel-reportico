                <ul class="nav navbar-nav" style="display: inline-block">
{% include 'backend/dropdown-brand.inc.tpl' %}
{% if SHOW_HIDE_DROPDOWN_MENU == "show" and DROPDOWN_MENU_ITEMS %}
{% for menu in DROPDOWN_MENU_ITEMS %}
            <li class="dropdown reportico-dropdown-listitem"><a class="dropdown-toggle reportico-dropdown-link nav-label" data-toggle="dropdown" href="#">{{menu.title}}<span class="caret"></span></a>
            <ul class="dropdown-menu reportico-dropdown">
{% for menuitem in menu.items %}
{% if menuitem.reportname is defined %}
                <li ><a class="reportico-dropdown-item" href="{{ RUN_REPORT_URL }}&project={{ menuitem.project }}&xmlin={{menuitem.reportfile}}">{{menuitem.reportname}}</a></li>
{% endif %}
{% endfor %}

              </ul>
            </li>
{% endfor %}
{% endif %}
            </ul>
