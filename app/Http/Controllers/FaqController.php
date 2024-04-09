<?php
/* The FaqController class in PHP Laravel handles the display of the Frequently Asked Questions (FAQ)
page by returning the FAQ view. */

namespace App\Http\Controllers;

use Illuminate\Contracts\View\Factory;
use Illuminate\View\View;

/**
 * FaqController handles the display of the Frequently Asked Questions (FAQ) page.
 */
class FaqController extends Controller
{
    /**
     * Display the FAQ page.
     * This method returns the view that contains the FAQ content.
     *
     * @return Factory|View Returns the FAQ view.
     */
    public function index(): Factory|View
    {
        return view('faq.index');
    }
}
