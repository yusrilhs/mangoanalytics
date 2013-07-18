from django.conf.urls import patterns, url
from tarifica import views

urlpatterns = patterns('',
   url(r'^setupprovider/(?P<asterisk_id>\d+)$', views.setupAddProviderInfo, name = 'setupprovider'),
   url(r'^setupbasetariffs/(?P<asterisk_id>\d+)$', views.setupAddBaseTariffs, name = 'setupbasetariffs'),
   url(r'^setupbundles/(?P<asterisk_id>\d+)$', views.setupAddBundles, name = 'setupbundles'),
   url(r'^deleteprovider/(?P<asterisk_id>\d+)$', views.deleteProvider, name = 'deleteprovider'),
   url(r'^thanks$', views.thanks, name = 'gracias'),
   url(r'^contact$',views.thanks, name = 'contacto'),
   url(r'^dashboardtroncales$', views.dashboardTrunks, name = 'dashboardtroncales')
)