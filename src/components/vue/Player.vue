<template>
    <div v-if="isVisible" class="grid grid-cols-2 md:grid-cols-3 bg-slate-300 shadow-md shadow-slate-700 mb-1">
        <div class="font-bold text-center p-1 min-w-36 col-span-2 md:col-span-1">{{meta.title}}</div>
        <div class="font-bold text-center p-1 min-w-36" title="Good Endings">Good: <span>{{ goodEndings.length }}</span>/{{meta.goodEndings}}</div>
        <div class="font-bold text-center p-1 min-w-36" title="Bad Endings">Bad: <span>{{ badEndings.length }}</span>/{{meta.badEndings}}</div>
    </div>
    <div v-if="isVisible" class="overflow-hidden">
        <div ref="tilter">
            <div :ref="currentPage.id" :key="currentPage.id">            
                <div v-if="currentPage != null" class="flex justify-center flex-col md:flex-row p-2">
                    <div>
                        <img :src="'/'+ meta.root + '/' + currentPage.file" :key="currentPage.file" alt="" class="m-auto" data-tilt data-tilt-full-page-listening>
                    </div>
                    <div class="p-0 max-w-md">
                        <ul class="comic-bold">
                            <li v-for="caption in currentPage.captions" :key="caption" class="p-2 m-2 md:mt-0 border border-slate-800 rounded-lg bg-slate-300 font-medium shadow-md shadow-slate-600">{{ caption }}</li>
                        </ul>
                    </div>
                    <div v-if="currentPage.id == 'cover'">
                        <ul class="flex flex-col p-2 text-white">
                            <li>Written by: <span v-for="author,i in meta.authors" :key="author" class="comic-bold">
                                <a v-if="author.url" :href="author.url" target="_blank" class="border-b-2 border-dashed border-white">{{ author.name }}</a>
                                <span v-else>{{ author.name }}</span>
                                {{i == meta.authors.length - 1 ? '' : ' & '}}
                            </span></li>
                            <li>Art by: <span v-for="artist in meta.artists" :key="artist" class="comic-bold">{{ artist.name }}</span></li>
                            <li>copyright: <span v-for="author in meta.copyright" :key="author" class="comic-bold">
                                <a v-if="author.url" :href="author.url" target="_blank" class="border-b-2 border-dashed border-white">{{ author.name }}</a>
                                <span v-else>{{ author.name }}</span>
                            </span></li>
                        </ul>                    
                    </div>                    
                </div>
                <ul class="flex justify-center items-center p-3 gap-3">
                    <li v-for="choice in currentPage.choices" class="flex">
                        <button @click="nextPage(choice.url)" :id="'button-' + choice.url" class="action-button border-2 border-lime-800 hover:border-lime-900 p-1 m-auto bg-lime-700 hover:bg-lime-800 font-bold text-white rounded-md min-w-36 shadow-sm shadow-lime-900">{{ choice.text }}</button>
                    </li>
                </ul>
                <div class="text-center" v-if="meta.hasAudio">
                    <button @click="muteAudio()" :title="mute ? 'Unmute' : 'Mute'" class="text-white"><Volume2 v-if="!mute" /><VolumeOff v-if="mute" /></button>
                </div>
            </div>
        </div>        
    </div>
</template>

<script setup>
    //imports
    // import { meta, data } from '../../data/skat1/info.js';
    import { ref, onMounted, onUpdated } from 'vue';
    import { Volume2, VolumeOff } from 'lucide-vue-next';
    import VanillaTilt from 'vanilla-tilt';

    //variables
    let meta, data, blank = null;
    const props = defineProps({
        book : String
    });
    const tilter = ref(null);
    const mute = ref(false);
    const currentPage = ref(null);
    const isVisible = ref(false);
    let audioElement = null;
    let goodEndings = [];
    let badEndings = [];    
    // countBadEndings();    

    //methods
    onMounted(async() => {        
        const importMeta = await import(`../../data/${props.book}/info.js`);        
        ({meta, data} = importMeta);        

        blank = {
            id: 'cover',
            file: meta.cover,
            captions: meta.description,
            choices: [
                {
                    text: 'Begin',
                    url: 'a0'
                }
            ]
        }

        if (data) currentPage.value = blank;
        isVisible.value = true;
    })

    onUpdated(() => {
        VanillaTilt.init(tilter.value, {
            max: 20,
            speed: 400
        })
    });

    const nextPage = (url) => {
        if (url === 'winner' && !goodEndings.includes(currentPage.value.id)) {
            goodEndings.push(currentPage.value.id);
        }
        if (url === 'bad' && !badEndings.includes(currentPage.value.id)) {
            badEndings.push(currentPage.value.id);
        }
        if (url === 'bad' || url === 'winner') {
            try {
                gtag('event', 'book_finished', {                    
                    'page_title': meta.title,
                    'category': 'book_end',
                    'final_result': url,
                    'final_page': currentPage.value.id
                });
            } catch (error) {
               console.log(error); 
            }
            currentPage.value = blank;
            return;
        }

        const nextPageFound = data.find(item => item.id === url);
        currentPage.value = nextPageFound;
        if(meta.hasAudio && !mute.value) playAudio(nextPageFound.id);
    }

    const muteAudio = () => {
        mute.value = !mute.value;
        if(mute.value) {
            if (audioElement != null) audioElement.pause();
        }
    }

    const playAudio = (clip) => {
        if (audioElement != null) audioElement.pause();
        audioElement = new Audio('/' + meta.root + '/audio/' + clip + '.mp3');
        audioElement.load();
        audioElement.play();
    }
</script>

<style>
    .v-enter-active,
    .v-leave-active {
        transition: opacity 0.1s ease;
        position: absolute;
    }

    .v-enter-from,
    .v-leave-to {
        opacity: 0;
    }
</style>