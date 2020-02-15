/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct ThemeFont : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *Val /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Val) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

    };
};