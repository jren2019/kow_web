
from django.http import HttpResponse
from django.template import loader


def index(request):
    template = loader.get_template('index.html')
    context = {
        'latest_question_list': 'test',
    }
    return HttpResponse(template.render(context, request))


def train(request):
    template = loader.get_template('train_tfjs.html')
    context = {
        'latest_question_list': 'trainjs',
    }
    return HttpResponse(template.render(context, request))