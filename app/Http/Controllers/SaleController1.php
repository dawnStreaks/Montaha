<?php

namespace App\Http\Controllers;


use App\Exports\ExportSales;
use App\Imports\SalesImport;
use App\Sale_New;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Company;

use Excel;
use PDF;


class SaleController1 extends Controller
{
    public function __construct()
    {
        $this->middleware('role:admin,staff');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sales = Sale_New::all();
        return view('sales1.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'po_no'      => 'required',
            'total_amount'    => 'required',
            'date'     => 'required',
        ]);

        Sale_New::create($request->all());

        return response()->json([
            'success'    => true,
            'message'    => 'Sales Created'
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sale = Sale_New::find($id);
        return $sale;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $sale = Sale_New::findOrFail($id);

        $this->validate($request, [
            'po_no'      => 'required',
            'total_amount'    => 'required',
            'date'     => 'required',
        ]);

        $sale->update($request->all());

        return response()->json([
            'success'    => true,
            'message'    => 'Sale Updated'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Sale_New::destroy($id);

        return response()->json([
            'success'    => true,
            'message'    => 'Sales Delete'
        ]);
    }

    public function apiSales()
    {
        $sales = Sale_New::all();

        return Datatables::of($sales)
            ->addColumn('action', function($sales){
                return '<a onclick="editForm('. $sales->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $sales->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>' .
                    '<a onclick="generateInvoice('. $sales->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-file"></i> Generate Invoice</a>';
            })
            ->rawColumns(['action'])->make(true);
    }

    public function ImportExcel(Request $request)
    {
        if ($request->hasFile('file')) {
            //Validasi
            $this->validate($request, [
                'file' => 'required',
                'extension' => 'mimes:xls,xlsx|max:10240',
            ]);
            if ($request->file('file')->isValid()) {
                //UPLOAD FILE
                $file = $request->file('file'); //GET FILE
                Excel::import(new SalesImport, $file); //IMPORT FILE
                return redirect()->back()->with(['success' => 'Upload file data sales !']);
            }
        }

        return redirect()->back()->with(['error' => 'Please choose file before!']);
    }

    public function exportSalesAll()
    {
        $sales = Sale_New::all();
        $pdf = PDF::loadView('sales1.SalesAllPDF',compact('sales'));
        return $pdf->download('sales.pdf');
    }

    public function exportExcel()
    {
        return (new ExportSales())->download('sales.xlsx');
    }

    public function generateInvoice($id)
    
    {        

        $porder_no = \DB::select(\DB::raw("select po_no from sales_new where id = '$id'"));
        $po_no = $porder_no[0]->po_no; 
        $Product_Out = \DB::select(\DB::raw("select * from product_out where po_no = '$po_no'"));
        // dd($Product_Out);

        // $Product_Out = $Product_Out->toArray();
        // $idst = explode(",",$request->exportpdf);
        // $Product_Out = Product_Out::find($idst);
        // $companyInfo = Company::find(1);
//  dd($Product_Out);
$pdf = PDF::loadView('sales1.productOutPDF',compact('Product_Out'));
return $pdf->download('sales1.pdf');

        // $pdf = PDF::setOptions([
        //     'images' => true,
        //     'isHtml5ParserEnabled' => true, 
        //     'isRemoteEnabled' => true
        // ])->loadView('sales1.productOutPDF', compact('Product_Out', 'companyInfo'));//->setPaper('a4', 'portrait')->stream();
        // // return $pdf->download('Product_Out.pdf');
        // return $pdf->download(date("Y-m-d H:i:s",time()).'_Product_Out.pdf');

    }

}
