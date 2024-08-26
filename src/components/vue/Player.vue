<template>
    <div class=" grid grid-cols-2 md:grid-cols-3 bg-slate-300 shadow-md shadow-slate-700 mb-1">        
        <div class="font-bold text-center p-1 min-w-36 col-span-2 md:col-span-1">{{meta.title}}</div>        
        <div class="font-bold text-center p-1 min-w-36" title="Good Endings">Good: <span>{{ goodEndings.length }}</span>/{{meta.goodEndings}}</div>            
        <div class="font-bold text-center p-1 min-w-36" title="Bad Endings">Bad: <span>{{ badEndings.length }}</span>/{{meta.badEndings}}</div>
    </div>  
    <div class="">
        <div :ref="currentPage.id" :key="currentPage.id" class="">
            <div v-if="currentPage != null" class="flex justify-center flex-col md:flex-row p-2">
                <div>            
                    <img :src="'/'+ meta.root + '/' + currentPage.file" :key="currentPage.file" alt="" class="m-auto">         
                </div>
                <div class="p-0 max-w-md">
                    <ul>
                        <li v-for="caption in currentPage.captions" :key="caption" class="p-2 m-2 md:mt-0 border border-slate-50 rounded-lg bg-slate-300 font-medium shadow-md shadow-slate-600">{{ caption }}</li>
                    </ul>
                </div>
            </div>
            <ul class="flex justify-center items-center p-3 gap-3">
                <li v-for="choice in currentPage.choices" class="flex">
                    <button @click="nextPage(choice.url)" class="border-2 p-1 m-auto bg-lime-700 hover:bg-lime-800 font-bold text-white rounded-md min-w-36">{{ choice.text }}</button>
                </li>
            </ul>              
        </div>
    </div>
</template>

<script setup>
    //imports
    import { useGtm } from '@gtm-support/vue-gtm';
    import {meta, data} from '../../data/skat1/info.js';
    import { ref } from 'vue';
    import { gsap } from 'gsap';

    //variables
    const gtm = useGtm();
    const currentPage = ref(null);
    const blank = {
        file: meta.cover,
        captions: meta.description,
        choices: [
            {
                text: 'Begin',
                url: 'a0'
            }
        ]
    }    
    let audioElement = null;
    let goodEndings = [];
    let badEndings = [];
    // countBadEndings();

    if(data) currentPage.value = blank;

    //methods
    const nextPage = (url)=>{        
        if(url === 'winner' && !goodEndings.includes(currentPage.value.id)) {
            goodEndings.push(currentPage.value.id);
        }
        if(url === 'bad' && !badEndings.includes(currentPage.value.id)) {
            badEndings.push(currentPage.value.id);
        }
        if(url === 'bad' || url === 'winner') {            
            window.dataLayer.push({
                event: 'book_end',
                page_title: meta.title,
                event_category: 'book_end', 
                event_type: url,
                event_label: currentPage.value.id 
            });
            url = 'a0';
        }
        const nextPageFound = data.find(item => item.id === url);
        currentPage.value = nextPageFound;
        playAudio(nextPageFound.id);
    }

    const playAudio = (clip)=>{
        if(audioElement != null) audioElement.pause();
        audioElement = new Audio('/'+ meta.root + '/audio/' + clip + '.mp3');
        audioElement.load();   
        audioElement.play();    
    }

    const countBadEndings = ()=>{
        data.forEach(element => {
            // element.choices.forEach(choice => {
            //     if(choice.url === 'bad') meta.badEndings++;
            //     if(choice.url === 'winner') meta.goodEndings++;
            // })
            // images.value.push('/' + meta.root + '/' + element.file);
        });
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