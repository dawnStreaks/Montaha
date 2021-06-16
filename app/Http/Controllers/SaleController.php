<?php

namespace App\Http\Controllers;

use App\Category;
use App\Customer;
use App\Exports\ExportProductOut;
use App\Product;
use App\Product_Out;
use App\Temp_Sale;
use App\Company;
use App\Sale_New;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use PDF;
use App\Barcode;



class SaleController extends Controller
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
        $products = Product::orderBy('name','ASC')
            ->get()
            ->pluck('name','id');

        $customers = Customer::orderBy('name','ASC')
            ->get()
            ->pluck('name','id');

        $invoice_data = Product_Out::all();
        return view('sales.index', compact('products','customers', 'invoice_data'));
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
     * 
     * 
     */
    //code to scan barcode is written here
    public function store(Request $request)
    {
         $i = 1;
        // $this->validate($request, [
        //    'product_id'     => 'required',
        //    'customer_id'    => 'required',
        //    'qty'            => 'required',
        //    'date'           => 'required'
        // ]);

        // Product_Out::create($request->all());

        // $product = Product::findOrFail($request->product_id);
        // $product->qty -= $request->qty;
        // $product->save();

        // return response()->json([
        //     'success'    => true,
        //     'message'    => 'Products Out Created'
        // ]);
        
        $this->validate($request, [
            'barcode_name'     => 'required',
            // 'customer_id'    => 'required',
            // 'qty'            => 'required',
            // 'date'           => 'required'
        ]);

       // $barcode = Barcode::findOrFail($request->barcode_name);
       // var_dump($barcode);
       $barcode = \DB::select(\DB::raw("select id from barcodes where name = '$request->barcode_name'"));
        
       $barcode_id = $barcode[0]->id;
        $find_product = \DB::select(\DB::raw("select id, price from products where barcode_id = $barcode_id"));
       // $Product_Out = Product_Out::findOrFail($find_product->id);
        //$Product_Out->update($request->all());
        $input['product_id'] = $find_product[0]->id;
        $input['price'] = $find_product[0]->price;
        $input['customer_id'] = 3;

        $input['po_no'] = $i++;
        $input['qty'] = 1;
        $input['date'] = date("Y/m/d");
       
        Product_Out::create($input);
        Temp_Sale::create($input);


        $product = Product::findOrFail($input['product_id']);
        $product->qty -= $request->qty;
        $product->update();

        return response()->json([
            'success'    => true,
            'message'    => 'Product Out Updated'
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
        $Product_Out = Temp_Sale::find($id);
        return $Product_Out;
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
        $this->validate($request, [
            'product_id'     => 'required',
            'price'          => 'required',
            'qty'            => 'required',
            'date'           => 'required'
        ]);

        $Temp_Sale = Temp_Sale::findOrFail($id);
        $Temp_Sale->update($request->all());

        $product = Product::findOrFail($request->product_id);
        $product->qty -= $request->qty;
        $product->update();

        return response()->json([
            'success'    => true,
            'message'    => 'Product Out Updated'
        ]);
    }

    public function barcodescan(Request $request)
    {
        $this->validate($request, [
            'barcode_name'     => 'required',
            // 'customer_id'    => 'required',
            // 'qty'            => 'required',
            // 'date'           => 'required'
        ]);

        $barcode = barcodes::findOrFail($barcode_name);
        $find_product = Product::findOrFail($barcode->id);
       // $Product_Out = Product_Out::findOrFail($find_product->id);
        //$Product_Out->update($request->all());
        $input['product_id'] = $find_product->id;
        $input['customer_id'] = "";
        $input['qty'] = 1;
        $input['date'] = date("Y/m/d");



        Product_Out::create($request->all());

        $product = Product::findOrFail($request->product_id);
        $product->qty -= $request->qty;
        $product->update();

        return response()->json([
            'success'    => true,
            'message'    => 'Product Out Updated'
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
        Temp_Sale::destroy($id);

        return response()->json([
            'success'    => true,
            'message'    => 'Products Delete Deleted'
        ]);
    }



    public function apiProductsOut(){
        $product = Temp_Sale::all();
        
        return Datatables::of($product)
            ->addColumn('products_name', function ($product){
                return $product->product->name;
            })
            ->addColumn('price', function ($product){
                return $product->product->price;
            })
            // ->addColumn('multiple_export', function ($product){
            //     return '<input type="checkbox" name="exportpdf[]" class="checkbox" value="'. $product->id .'">';
            // })
            ->addColumn('action', function($product){
                return '<a onclick="editForm('. $product->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $product->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['products_name','price','action'])->make(true);

    }

    public function exportProductOutAll()
    {
        $Product_Out = Temp_Sale::all();
        $pdf = PDF::loadView('sales.productOutAllPDF',compact('Product_Out'));
        return $pdf->download('sales.pdf');
    }

    public function exportProductOut(Request $request)
    {
        $idst = explode(",",$request->exportpdf);
        $Product_Out = Product_Out::find($idst);
        $companyInfo = Company::find(1);

        $pdf = PDF::setOptions([
            'images' => true,
            'isHtml5ParserEnabled' => true, 
            'isRemoteEnabled' => true
        ])->loadView('sales.productOutPDF', compact('Product_Out', 'companyInfo'))->setPaper('a4', 'portrait')->stream();
        return $pdf->download(date("Y-m-d H:i:s",time()).'_Product_Out.pdf');
    }

    public function exportExcel()
    {
        return (new ExportProductOut)->download('sales.xlsx');
    }

    public function checkAvailable($id)
    {
        $Product = Product::findOrFail($id);
        return $Product;
    }

    public function order_complete()
    {
        $i = 0;
        $temp_sales = Temp_Sale::all();
        $total_amount = \DB::select(\DB::raw("select SUM(price) as sum from temp_sales "));
        // dd();// foreach($temp_sales as $object));
        
// Dump array with object-arrays
// dd($arrays[1]['price']);
        //  Sale_New::insert($temp_sales->toArray());
        // $sales_new = \DB::table("sales_new")->insertGetId([
            $input['po_no'] = rand();
            $input['total_amount'] = $total_amount[0]->sum;
            $input['date'] = date("Y/m/d");
        // 'invoice_link' => "/sales"
    // ]);
        Sale_New::create($input);
        // $this->exportProductOutAll();
        foreach($temp_sales as $object)
        {
            $arrays[] = $object->toArray();
            foreach($arrays as $item)
            {
                // dd($item);
              
                $test['po_no'] = $input['po_no'];
                $test['product_id'] = $item['product_id'];
                $test['price'] = $item['price'];
                $test['qty'] = $item['qty'];
                $test['date'] = $item['date'];
               
               Product_Out::insert($test);

            }


           }


        $delete_temp_sales = \DB::select(\DB::raw("truncate table temp_sales"));
        return response()->json([
            'success'    => true,
            'message'    => 'Products invoiced',
            // 'data' => $input
        ]);
    

    }
}
