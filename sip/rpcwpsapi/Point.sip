/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Point : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_DataLabel(
            DataLabel **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Explosion(
            long *prop /Out/) = 0;

        virtual HRESULT put_Explosion(
            long prop) = 0;

        virtual HRESULT get_HasDataLabel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDataLabel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Interior(
            Interior **prop /Out/) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MarkerBackgroundColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColor(
            long prop) = 0;

        virtual HRESULT get_MarkerBackgroundColorIndex(
            XlColorIndex *prop /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColorIndex(
            XlColorIndex prop) = 0;

        virtual HRESULT get_MarkerForegroundColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColor(
            long prop) = 0;

        virtual HRESULT get_MarkerForegroundColorIndex(
            XlColorIndex *prop /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColorIndex(
            XlColorIndex prop) = 0;

        virtual HRESULT get_MarkerSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_MarkerSize(
            long prop) = 0;

        virtual HRESULT get_MarkerStyle(
            XlMarkerStyle *prop /Out/) = 0;

        virtual HRESULT put_MarkerStyle(
            XlMarkerStyle prop) = 0;

        virtual HRESULT Paste(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_PictureType(
            XlChartPictureType *prop /Out/) = 0;

        virtual HRESULT put_PictureType(
            XlChartPictureType prop) = 0;

        virtual HRESULT get_PictureUnit(
            double *prop /Out/) = 0;

        virtual HRESULT put_PictureUnit(
            double prop) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_ApplyPictToSides(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyPictToSides(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyPictToFront(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyPictToFront(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyPictToEnd(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyPictToEnd(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SecondaryPlot(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SecondaryPlot(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **prop /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = wpsapi::xlDataLabelsShowNone,
            VARIANT LegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT ShowSeriesName = argMissing2(),
            VARIANT ShowCategoryName = argMissing2(),
            VARIANT ShowValue = argMissing2(),
            VARIANT ShowPercentage = argMissing2(),
            VARIANT ShowBubbleSize = argMissing2(),
            VARIANT Separator = argMissing2(),
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT get_Has3DEffect(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Has3DEffect(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_PictureUnit2(
            double *prop /Out/) = 0;

        virtual HRESULT put_PictureUnit2(
            double prop) = 0;

        virtual HRESULT get_Height(
            double *prop /Out/) = 0;

        virtual HRESULT get_Width(
            double *prop /Out/) = 0;

        virtual HRESULT get_Top(
            double *prop /Out/) = 0;

        virtual HRESULT get_Left(
            double *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT PieSliceLocation(
            XlPieSliceLocation loc,
            XlPieSliceIndex Index = wpsapi::xlOuterCounterClockwisePoint,
            double *prop /Out/ = 0) = 0;

        ChartBorder* getBorder();
        %MethodCode
            wpsapi::ChartBorder *prop = nullptr;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Border, get=getBorder)

        DataLabel* getDataLabel();
        %MethodCode
            wpsapi::DataLabel *prop = nullptr;
            HRESULT hr = sipCpp->get_DataLabel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataLabel, get=getDataLabel)

        long getExplosion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Explosion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Explosion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExplosion(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Explosion(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Explosion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Explosion, get=getExplosion, set=setExplosion)

        VARIANT_BOOL getHasDataLabel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasDataLabel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDataLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasDataLabel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasDataLabel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasDataLabel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasDataLabel, get=getHasDataLabel, set=setHasDataLabel)

        Interior* getInterior();
        %MethodCode
            wpsapi::Interior *prop = nullptr;
            HRESULT hr = sipCpp->get_Interior(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Interior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Interior, get=getInterior)

        VARIANT_BOOL getInvertIfNegative();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InvertIfNegative(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvertIfNegative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvertIfNegative(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvertIfNegative(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvertIfNegative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvertIfNegative, get=getInvertIfNegative, set=setInvertIfNegative)

        long getMarkerBackgroundColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MarkerBackgroundColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerBackgroundColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerBackgroundColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerBackgroundColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerBackgroundColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerBackgroundColor, get=getMarkerBackgroundColor, set=setMarkerBackgroundColor)

        XlColorIndex getMarkerBackgroundColorIndex();
        %MethodCode
            wpsapi::XlColorIndex prop = (wpsapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_MarkerBackgroundColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerBackgroundColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerBackgroundColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerBackgroundColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerBackgroundColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerBackgroundColorIndex, get=getMarkerBackgroundColorIndex, set=setMarkerBackgroundColorIndex)

        long getMarkerForegroundColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MarkerForegroundColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerForegroundColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerForegroundColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerForegroundColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerForegroundColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerForegroundColor, get=getMarkerForegroundColor, set=setMarkerForegroundColor)

        XlColorIndex getMarkerForegroundColorIndex();
        %MethodCode
            wpsapi::XlColorIndex prop = (wpsapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_MarkerForegroundColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerForegroundColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerForegroundColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerForegroundColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerForegroundColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerForegroundColorIndex, get=getMarkerForegroundColorIndex, set=setMarkerForegroundColorIndex)

        long getMarkerSize();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MarkerSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerSize(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerSize, get=getMarkerSize, set=setMarkerSize)

        XlMarkerStyle getMarkerStyle();
        %MethodCode
            wpsapi::XlMarkerStyle prop = (wpsapi::XlMarkerStyle)0;
            HRESULT hr = sipCpp->get_MarkerStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerStyle(XlMarkerStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerStyle, get=getMarkerStyle, set=setMarkerStyle)

        XlChartPictureType getPictureType();
        %MethodCode
            wpsapi::XlChartPictureType prop = (wpsapi::XlChartPictureType)0;
            HRESULT hr = sipCpp->get_PictureType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureType(XlChartPictureType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureType, get=getPictureType, set=setPictureType)

        double getPictureUnit();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_PictureUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureUnit(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureUnit, get=getPictureUnit, set=setPictureUnit)

        VARIANT_BOOL getApplyPictToSides();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyPictToSides(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyPictToSides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyPictToSides(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyPictToSides(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyPictToSides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyPictToSides, get=getApplyPictToSides, set=setApplyPictToSides)

        VARIANT_BOOL getApplyPictToFront();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyPictToFront(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyPictToFront()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyPictToFront(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyPictToFront(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyPictToFront()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyPictToFront, get=getApplyPictToFront, set=setApplyPictToFront)

        VARIANT_BOOL getApplyPictToEnd();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyPictToEnd(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyPictToEnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyPictToEnd(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyPictToEnd(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyPictToEnd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyPictToEnd, get=getApplyPictToEnd, set=setApplyPictToEnd)

        VARIANT_BOOL getShadow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Shadow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShadow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shadow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shadow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shadow, get=getShadow, set=setShadow)

        VARIANT_BOOL getSecondaryPlot();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SecondaryPlot(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SecondaryPlot()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSecondaryPlot(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SecondaryPlot(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SecondaryPlot()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SecondaryPlot, get=getSecondaryPlot, set=setSecondaryPlot)

        ChartFillFormat* getFill();
        %MethodCode
            wpsapi::ChartFillFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Fill(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fill, get=getFill)

        VARIANT_BOOL getHas3DEffect();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Has3DEffect(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Has3DEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHas3DEffect(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Has3DEffect(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Has3DEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Has3DEffect, get=getHas3DEffect, set=setHas3DEffect)

        ChartFormat* getFormat();
        %MethodCode
            wpsapi::ChartFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Format(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Format, get=getFormat)

        double getPictureUnit2();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_PictureUnit2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureUnit2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureUnit2(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureUnit2(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureUnit2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureUnit2, get=getPictureUnit2, set=setPictureUnit2)

        double getHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Height, get=getHeight)

        double getWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Width, get=getWidth)

        double getTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Top, get=getTop)

        double getLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Left, get=getLeft)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)
    };
};
