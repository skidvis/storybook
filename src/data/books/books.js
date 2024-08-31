import { generateSlug } from "../../helpers/slugify";

const books = [
    {
        "title": "Skat, The Ninja Cat: Issue 1",
        "root": "skat1",
        "cover": "a0.gif",  
        "description": [
          "Step into the shadows with Skat, The Ninja Cat.",
          "In this world of ninja cats and cunning foes, nothing is as it seems. Will you choose stealth or strength? Loyalty or survival? Each decision could spell the difference between glory and doom. As you navigate this pulse-pounding journey, you'll find yourself entangled in a web of betrayal, friendship, and deadly consequences. The fate of Skat, the ShadowBlades, and perhaps the entire world rests in your hands. Are you ready to step into the shadows and uncover the twisting paths that await?"
        ],  
    },
    {
        "title": "Skat, The Ninja Cat: Issue 2",
        "root": "skat2",
        "cover": "a0.jpg",
        "description": [
          "Dive deeper into Skat's world of intrigue and danger in this thrilling continuation of his adventures. ",
          "As the repercussions of his daring crystal heist unfold, Skat finds himself at the center of a storm, pursued by vengeful wolves and caught in the crosshairs of rival clans. From tense standoffs and breathtaking duels to unexpected alliances and mystical encounters, every choice shapes Skat's fate. Will he outsmart his pursuers, confront formidable foes like the FireBlade samurai, or uncover the secrets behind a mysterious flame-wielding creature? With each turn, the stakes rise higher, testing Skat's skills, loyalty, and judgment in a world where friends and enemies blur, and every decision could lead to triumph or doom. Prepare for a pulse-pounding journey through shadowy forests, neutral territories, and treacherous confrontations that will keep you guessing until the very end."
        ],
    }
];
const getBooks = () => {
    return books.map((book) => {
        return {
            ...book,
            slug: generateSlug(book.title)
        };
    })
};


export { books, getBooks };