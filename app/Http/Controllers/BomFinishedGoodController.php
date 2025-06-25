<?php

namespace App\Http\Controllers;

use App\Models\BomFinishedGood;
use Illuminate\Http\Request;
use App\Models\Item;
use App\Models\Bom;
use App\Models\Uom;


class BomFinishedGoodController extends Controller
{
    public function index()
    {
        $bomFinishedGoods = BomFinishedGood::orderBy('id','desc')->paginate(10);
        return view('pages.bomFinishedGoods.index', compact('bomFinishedGoods'));
    }

    public function create()
    {
        $items = \App\Models\Item::all();
        $boms = \App\Models\Bom::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.bomFinishedGoods.create', [
            'mode' => 'create',
            'bomFinishedGood' => new BomFinishedGood(),
            'items' => $items,
            'boms' => $boms,
            'uoms' => $uoms,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        BomFinishedGood::create($data);
        return redirect()->route('bomFinishedGoods.index')->with('success', 'Successfully created!');
    }

    public function show(BomFinishedGood $bomFinishedGood)
    {
        return view('pages.bomFinishedGoods.view', compact('bomFinishedGood'));
    }

    public function edit(BomFinishedGood $bomFinishedGood)
    {
        $items = \App\Models\Item::all();
        $boms = \App\Models\Bom::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.bomFinishedGoods.edit', [
            'mode' => 'edit',
            'bomFinishedGood' => $bomFinishedGood,
            'items' => $items,
            'boms' => $boms,
            'uoms' => $uoms,

        ]);
    }

    public function update(Request $request, BomFinishedGood $bomFinishedGood)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $bomFinishedGood->update($data);
        return redirect()->route('bomFinishedGoods.index')->with('success', 'Successfully updated!');
    }

    public function destroy(BomFinishedGood $bomFinishedGood)
    {
        $bomFinishedGood->delete();
        return redirect()->route('bomFinishedGoods.index')->with('success', 'Successfully deleted!');
    }
}