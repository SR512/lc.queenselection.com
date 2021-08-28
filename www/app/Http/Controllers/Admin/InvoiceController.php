<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\InvoiceRequest;
use App\Models\Employee;
use App\Models\Product;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = resolve('invoice-repo')->getInvoice();
            return Datatables::of($data)
                ->addColumn('name', function ($row) {
                    return "Name: " . $row->name . "<br/>Email: " . $row->email . "<br/> Mobile: " . $row->mobile;
                })
                ->addColumn('created_at', function ($row) {
                    return $row->created_at_formatted;
                })
                ->addColumn('invoicedate', function ($row) {
                    return $row->invoice_date_formatted;
                })
                ->addColumn('status', function ($row) {
                    return config('constants.PAYMENT_STATUS')[$row->status];
                })
                ->addColumn('method', function ($row) {
                    return config('constants.PAYMENT_METHODS')[$row->method];
                })
                ->addColumn('action', function ($row) {
                    $btn = view('invoice.datatablesActions', compact('row'))->render();
                    return $btn;
                })
                ->rawColumns(['action', 'name'])
                ->make(true);
        }
        return view('invoice.invoice_list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products_with_size_data = [];
        $employees = Employee::pluck('first_name', 'id');
        $products = Product::all();
        if (!empty($products)) {
            foreach ($products as $key => $row) {
                $products_with_size_data[$key]['product_id'] = $row->id;
                $products_with_size_data[$key]['product_name'] = $row->product_name;

                foreach ($row->stocks as $stock) {
                    $data = [];
                    $data['id'] = $stock->id;
                    $data['size'] = $stock->attribute_size->size;
                    $data['min_quantity'] = $stock->min_quantity;
                    $data['price'] = $stock->price;

                    $products_with_size_data[$key]['size'][] = $data;
                }
            }
        }
        return view('invoice.create_invoice', compact('employees', 'products_with_size_data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(InvoiceRequest $request)
    {

        $invoice = resolve('invoice-repo')->create($request);

        if (!empty($invoice)) {
            toastr()->success('Invoice save successfully.');

        } else {
            toastr()->error('Invoice not save..!');
        }

        return redirect()->route('invoice.index');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $invoice = resolve('invoice-repo')->findById($id);
        $employees = Employee::pluck('first_name', 'id');
        $products = Product::all();
        if (!empty($products)) {
            foreach ($products as $key => $row) {
                $products_with_size_data[$key]['product_id'] = $row->id;
                $products_with_size_data[$key]['product_name'] = $row->product_name;

                foreach ($row->stocks as $stock) {
                    $data = [];
                    $data['id'] = $stock->id;
                    $data['size'] = $stock->attribute_size->size;
                    $data['min_quantity'] = $stock->min_quantity;
                    $data['price'] = $stock->price;

                    $products_with_size_data[$key]['size'][] = $data;
                }
            }
        }
        return view('invoice.show_invoice', compact('invoice', 'employees', 'products_with_size_data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $invoice = resolve('invoice-repo')->findById($id);
        $employees = Employee::pluck('first_name', 'id');
        $products = Product::all();
        if (!empty($products)) {
            foreach ($products as $key => $row) {
                $products_with_size_data[$key]['product_id'] = $row->id;
                $products_with_size_data[$key]['product_name'] = $row->product_name;

                foreach ($row->stocks as $stock) {
                    $data = [];
                    $data['id'] = $stock->id;
                    $data['size'] = $stock->attribute_size->size;
                    $data['min_quantity'] = $stock->min_quantity;
                    $data['price'] = $stock->price;

                    $products_with_size_data[$key]['size'][] = $data;
                }
            }
        }
        return view('invoice.edit_invoice', compact('invoice', 'employees', 'products_with_size_data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(InvoiceRequest $request, $id)
    {
        $invoice = resolve('invoice-repo')->update($id,$request);

        if (!empty($invoice)) {
            toastr()->success('Invoice updated successfully.');

        } else {
            toastr()->error('Invoice not update..!');
        }

        return redirect()->route('invoice.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $invoice = resolve('invoice-repo')->findById($id);

        if (!empty($invoice)) {
            if($invoice->delete()){
                toastr()->success('Invoice delete successfully.');
            }else{
                toastr()->error('Invoice not delete.');
            }

        } else {
            toastr()->error('Invoice not found..!');
        }
        return redirect()->back();
    }
}
