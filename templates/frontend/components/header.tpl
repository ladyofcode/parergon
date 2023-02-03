<!DOCTYPE html>

{include file="frontend/components/headerHead.tpl"}

<header>
    <nav id="main-nav">
        {* <a class="logo" href="/">
            Parergon
        </a>
        <div class="dropdown-link-container">
            <a href="./about.html">About</a>
            <a href="./issues.html">Browse</a>
            <a href="./subscribe.html">Subscribe</a>
            <a href="./submissions.html">Submissions</a>
            <a href="./featured-content.html">Features</a>
            <a href="./contact.html">Contact</a>
        </div>
        <button class="mobile-dropdown-toggle" aria-hidden="true">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 30 30"
                width="30px" height="30px">
                <g id="surface183559384">
                    <path style=" stroke:none;fill-rule:nonzero;fill:rgb(100%,100%,100%);fill-opacity:1;"
                        d="M 3 7 C 2.640625 6.996094 2.304688 7.183594 2.121094 7.496094 C 1.941406 7.808594 1.941406 8.191406 2.121094 8.503906 C 2.304688 8.816406 2.640625 9.003906 3 9 L 27 9 C 27.359375 9.003906 27.695312 8.816406 27.878906 8.503906 C 28.058594 8.191406 28.058594 7.808594 27.878906 7.496094 C 27.695312 7.183594 27.359375 6.996094 27 7 Z M 3 14 C 2.640625 13.996094 2.304688 14.183594 2.121094 14.496094 C 1.941406 14.808594 1.941406 15.191406 2.121094 15.503906 C 2.304688 15.816406 2.640625 16.003906 3 16 L 27 16 C 27.359375 16.003906 27.695312 15.816406 27.878906 15.503906 C 28.058594 15.191406 28.058594 14.808594 27.878906 14.496094 C 27.695312 14.183594 27.359375 13.996094 27 14 Z M 3 21 C 2.640625 20.996094 2.304688 21.183594 2.121094 21.496094 C 1.941406 21.808594 1.941406 22.191406 2.121094 22.503906 C 2.304688 22.816406 2.640625 23.003906 3 23 L 27 23 C 27.359375 23.003906 27.695312 22.816406 27.878906 22.503906 C 28.058594 22.191406 28.058594 21.808594 27.878906 21.496094 C 27.695312 21.183594 27.359375 20.996094 27 21 Z M 3 21 " />
                </g>
            </svg>
        </button> *}

        {* Show the primary menu only if it is set *}
        {if !empty(trim($primaryMenu)) || $currentContext}
            <div class="lower-header">

                {$primaryMenu}

            </div>
        {/if}
    </nav>
</header>