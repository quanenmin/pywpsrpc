/**
 * Copyright (c) 2020-2021 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct FileDialogSelectedItems : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *pcFiles /Out/) = 0;

        Py_ssize_t __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            int Index,
            BSTR *Item /Out/) = 0;

        BSTR __getitem__(int index) const;
        %MethodCode
            BSTR *prop = new BSTR;
            if (sipCpp->Item(a0, prop) != S_OK)
            {
                delete prop;
                sipIsErr = 1;
            }
            else
            {
                sipRes = prop;
            }
        %End

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)
    };
};
