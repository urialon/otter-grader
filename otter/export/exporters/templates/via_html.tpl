{% extends 'full.tpl' %}

{% block html_head %}
    {{ super() }}
    <style type="text/css" media="screen,print">
        div.cell {
            page-break-inside: avoid;
        }
        div.output_wrapper {
            page-break-inside: avoid;
        }
        div.output {
            page-break-inside: avoid;
        }
        p.otter-page-break-after {
            page-break-before: always !important;
        }
        div.cell{ display: block } 
        div.output_wrapper { display: block }
        div.output { display: block }
    </style>
{% endblock html_head %}

{% block any_cell %}
{% if cell.source and "#newpage" in cell.source %}
    <p class="otter-page-break-after"></p>
    {{ super() }}
{% else %}
    {{ super() }}
{% endif %}
{% endblock any_cell %}
