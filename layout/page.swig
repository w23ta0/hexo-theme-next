{% extends '_layout.swig' %}

{% block title %}
  {{ page.title + ' | ' + config.title }}
{% endblock %}

{% block content %}

  {# All tags page support #}
  {% if page.type === "tags" %}
    <div class="tag-cloud">
      <div class="tag-cloud-title">
        Totally {{ site.tags.length }} tags
      </div>
      <div class="tag-cloud-tags">
        {{ tagcloud({min_font: 12, max_font: 30, amount: 200, color: true, start_color: '#ccc', end_color: '#111'}) }}
      </div>
    </div>
  {% else %}
    {{ page.content }}
  {% endif %}

{% endblock %}