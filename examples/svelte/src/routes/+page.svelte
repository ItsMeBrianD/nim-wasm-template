<script>
    import {load} from "nim-wasm-template";
    let num = 0;
</script>

This is a nim -> wasm fibonacci calculator running in SvelteKit
<br/>
<input type="number" bind:value={num}/>

{#await load()}
    Hello
{:then e} 
    {e.exports.fibonacci(num)}
{/await}