/**
 * Copyright (c) 2020-2021 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Hyperlinks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        Py_ssize_t __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            VARIANT *Index,
            Hyperlink **prop /Out/) = 0;

        Hyperlink* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Hyperlink *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT _Add(
            IDispatch *Anchor,
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            Hyperlink **prop /Out/ = 0) = 0;

        virtual HRESULT Add(
            IDispatch *Anchor,
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            VARIANT *ScreenTip = argMissing(),
            VARIANT *TextToDisplay = argMissing(),
            VARIANT *Target = argMissing(),
            Hyperlink **prop /Out/ = 0) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

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
