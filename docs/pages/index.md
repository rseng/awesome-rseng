---
layout: default
title: {{ site.name }}
permalink: /
excluded_in_search: true
---

{% assign tags_issues =  site.issues | map: 'tags' | join: ',' | join: ',' | split: ',' | uniq | sort %}

<div class="row">
   <div class="col-sm-12">
      <form role="form">
       <div class="form-group">
        <input type="text" class="form-control" id="search">
           <label class="float-label" for="search">
            Search filter</label>
       </div>
       </form>
       <ul class="filter">
        <li class="active" style="margin:0px">
         <a style="font-weight:600; margin-right:5px" class="btn btn-info btn-sm" href="#" data-filter="all">See all</a>
        </li>{% for tag in tags_issues %}{% if tag != "" %}
          <li style="margin:0px">
            <a style="font-weight:600;" class="btn btn-primary btn-sm" href="#" data-filter="{{ tag }}">{{ tag }}</a>
          </li>{% endif %}{% endfor %}
        </ul>
    <ul class="list">
    {% assign n = site.issues | size %}
    {% assign posts = site.issues | sample: n %}
    {% for issue in posts %}{% assign tags =  issue.tags | join: ',' | split: ',' | uniq | sort %}{% if issue.title %}
    <li class="item {% for tag in tags %}{{tag}} {% endfor %}" style="width:100%">
      <div class="panel panel-default">
       <div class="panel-heading"><span class="badge badge-info" style="margin-right:20px">{{ issue.repo }}</span> <a target="_blank" href="{{ issue.html_url }}">{{ issue.title }}</a>
       <span style="float:right">Opened by <a href="https://github.com/{{ issue.user }}" target="_blank">{{ issue.user }}</a></span>
      </div>
    </div>
    </li>{% endif %}{% endfor %}
    </ul>
       <div class="no-result"><h3>Sorry, no match!</h3></div>
    </div>
  </div>
