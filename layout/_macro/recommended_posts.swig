<div class="post-body{% if theme.han %} han-init-context{% endif %}{% if post.direction && post.direction.toLowerCase() === 'rtl' %} rtl{% endif %}" itemprop="articleBody">
<div class="recommended_posts">
    {% set recommended_posts = recommended_posts(post, site) %}
    {% if recommended_posts.length > 0 %}
    <div class="note primary">
    <h4 class="recommended">{{ __('post.recommended_posts') }}</h4>
    <ul class="recommended-ul">
        {% for link in recommended_posts  %}
            <li class='popular-posts-item'><a href="{{ link.permalink }}">{{ link.title }}</a></li>
        {% endfor %}
    </ul>
    {% endif %}
</div>
</div>
