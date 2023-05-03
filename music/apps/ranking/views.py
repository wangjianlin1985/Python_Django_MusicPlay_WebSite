from django.shortcuts import render
from django.views import View
from index.models import Song, Dynamic

class RankingView(View):

    def get(self, request):
        # 热搜歌曲
        search_song = Dynamic.objects.select_related('song').order_by('-dynamic_search').all()[:4]
        # 歌曲分类列表
        All_list = Song.objects.values('song_type').distinct() # 去重
        # 歌曲信息列表
        song_type = request.GET.get('type', '')
        if song_type:
            song_info = Dynamic.objects.select_related('song').filter(song__song_type=song_type).order_by('-dynamic_plays').all()[:10]
        else:
            song_info = Dynamic.objects.select_related('song').order_by('dynamic_plays').all()[:10]
        return render(request, 'ranking/ranking.html', locals())
