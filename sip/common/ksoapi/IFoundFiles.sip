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
    struct IFoundFiles : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            BSTR *pbstr /Out/) = 0;

        BSTR __getitem__(int index) const;
        %MethodCode
            BSTR *prop = new BSTR;
            if (sipCpp->get_Item(a0, prop) != S_OK)
            {
                delete prop;
                sipIsErr = 1;
            }
            else
            {
                sipRes = prop;
            }
        %End

        virtual HRESULT get_Count(
            int *pCount /Out/) = 0;

        Py_ssize_t __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        int getCount();
        %MethodCode
            int prop = 0;
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
