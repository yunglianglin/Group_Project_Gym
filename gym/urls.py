"""project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
"""
gym/urls
"""
from . import views
from django.urls import path

urlpatterns = [
    path('', views.gyms, name='gyms' ),
	path('base.html', views.gyms, name='gyms' ),
	path('WG_LDA.html', views.WG, name = 'WG'),
	path('EX_LDA.html', views.EX, name = 'EX'),
	path('GF_LDA.html', views.GF, name = 'GF'),
	path('TF_LDA.html', views.TF, name = 'TF'),
    path('date', views.WC, name='WC'),
	path('report.html', views.display_report, name='display_report'),
	path('getResult/',views.getResult,name='getResult'),
	path('buzz/',views.totalBuzz,name='totalBuzz'),
]
