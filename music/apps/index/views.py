from django.shortcuts import render
from django.views import View
from index.models import Song, Dynamic, Label


class IndexViews(View):

    def get(self, request):
        # 热搜歌曲
        search_song = Dynamic.objects.select_related('song').order_by('-dynamic_search').all()[:6]
        # 歌曲分类
        label_list = Label.objects.all()
        # 热门歌曲
        play_hot_song = Dynamic.objects.select_related('song').order_by('-dynamic_plays').all()[:10]
        # 新歌推荐
        daily_recommendation = Song.objects.order_by('-song_release').all()[:3]
        # 热门搜索、热门下载
        search_ranking = search_song[:6]
        down_ranking = Dynamic.objects.select_related('song').order_by('-dynamic_down').all()[:6]
        all_ranking = [search_song, down_ranking]
        return render(request, 'index/index.html', locals())


# def page_not_found(request):
#     return render(request, 'base/error404.html', status=404)