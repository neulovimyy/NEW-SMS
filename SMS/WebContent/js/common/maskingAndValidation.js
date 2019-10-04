
/**
 * jquery.meio.mask.js
 *
 * Copyright (c) 2008 Fabio M. Costa http://www.meiocodigo.com
 */

(function($) {

    var isIphone = (window.orientation != null);

    // browsers like firefox2 and before and opera doesnt have the onPaste event, but the paste feature can be done with the onInput event.
    var pasteEvent = (($.browser.opera || ($.browser.mozilla && parseFloat($.browser.version.substr(0,3)) < 1.9)) ? 'input' : 'paste');

    // the timeout is set because we can't get the value from the input without it
    var pasteHandler = function(e) {
        e = $.event.fix(e || window.event);
        e.type = 'paste';
        var el = e.target;

        setTimeout(function() {
            $.event.dispatch.call(el, e);
        }, 1);
    };

    $.event.special.paste = {
        setup: function() {
            if (this.addEventListener)
                this.addEventListener(pasteEvent, pasteHandler, false);
            else if (this.attachEvent)
                this.attachEvent('on'+ pasteEvent, pasteHandler);
        },

        teardown: function() {
            if (this.removeEventListener)
                this.removeEventListener(pasteEvent, pasteHandler, false);
            else if (this.detachEvent)
                this.detachEvent('on'+ pasteEvent, pasteHandler);
        }
    };

    $.extend({
        mask: {

            // the mask rules. You may add yours!
            // number rules will be overwritten
            rules: {
                'z': /[a-z]/,
                'Z': /[A-Z]/,
                'a': /[a-zA-Z]/,
                '*': /[0-9a-zA-Z .-]/,
                '@': /[0-9a-zA-ZçÇáàãâéèêíìóòôõúùü]/,
                '&': /[a-zA-Z\ \.\-]/,
                '%': /[0-9-]/
            },

            // these keys will be ignored by the mask.
            // all these numbers where obtained on the keydown event
            keyRepresentation: {
                8    : 'backspace',
                9    : 'tab',
                13   : 'enter',
                16   : 'shift',
                17   : 'control',
                18   : 'alt',
                27   : 'esc',
                33   : 'page up',
                34   : 'page down',
                35   : 'end',
                36   : 'home',
                37   : 'left',
                38   : 'up',
                39   : 'right',
                40   : 'down',
                45   : 'insert',
                46   : 'delete',
                116  : 'f5',
                123  : 'f12',
                224  : 'command'
            },

            iphoneKeyRepresentation: {
                10    : 'go',
                127   : 'delete'
            },

            signals: {
                '+' : '',
                '-' : '-'
            },

            // default settings for the plugin
            options: {
                attr: 'alt', // an attr to look for the mask name or the mask itself
                mask: null, // the mask to be used on the input
                type: 'fixed', // the mask of this mask
                maxLength: -1, // the maxLength of the mask
                defaultValue: '', // the default value for this input
                signal: false, // this should not be set, to use signal at masks put the signal you want ('-' or '+') at the default value of this mask.
                               // See the defined masks for a better understanding.

                textAlign: true, // use false to not use text-align on any mask (at least not by the plugin, you may apply it using css)
                selectCharsOnFocus: true, // select all chars from input on its focus
                autoTab: false, // auto focus the next form element when you type the mask completely
                setSize: false, // sets the input size based on the length of the mask (work with fixed and reverse masks only)
                fixedChars: '[(),.:/ -]', // fixed chars to be used on the masks. You may change it for your needs!

                onInvalid: function() {},
                onValid: function() {},
                onOverflow: function() {}
            },

            // masks. You may add yours!
            // Ex: $.fn.setMask.masks.msk = {mask: '999'}
            // and then if the 'attr' options value is 'alt', your input should look like:
            // <input type="text" name="some_name" id="some_name" alt="msk" />
            masks: {
                'phone'             : {mask: '(99) 9999-9999' },
                'phone-us'          : {mask: '(999) 999-9999' },
                'cpf'               : {mask: '999.999.999-99' }, // cadastro nacional de pessoa fisica (kind of a brazillian ssn)
                'cnpj'              : {mask: '99.999.999/9999-99' },
                'date'              : {mask: '39/19/9999' },     // uk date
                'date-us'           : {mask: '19/39/9999' },
                'cep'               : {mask: '99999-999' },
                'time'              : {mask: '29:59' },
                'cc'                : {mask: '9999 9999 9999 9999' }, // credit card
                'integer'           : {mask: '999.999.999.999',    type: 'reverse' },
                'decimal'           : {mask: '99,999.999.999.999', type: 'reverse', defaultValue: '000'},
                'decimal-us'        : {mask: '99.999,999,999,999', type: 'reverse', defaultValue: '000'},
                'signed-decimal'    : {mask: '99,999.999.999.999', type: 'reverse', defaultValue: '+000'},
                'signed-decimal-us' : {mask: '99,999.999.999.999', type: 'reverse', defaultValue: '+000'}
            },

            init: function() {
                // if has not inited...
                if (!this.hasInit) {

                    var self = this, i,
                        keyRep = (isIphone) ? this.iphoneKeyRepresentation : this.keyRepresentation;

                    this.ignore = false;

                    // constructs number rules
                    for (i=0; i<=9; i++) this.rules[i] = new RegExp('[0-'+i+']');

                    this.keyRep = keyRep;
                    // ignore keys array creation for iphone or the normal ones
                    this.ignoreKeys = [];
                    $.each(keyRep,function(key) {
                        self.ignoreKeys.push(parseInt(key, 10));
                    });

                    this.hasInit = true;
                }
            },

            set: function(el,options) {

                var maskObj = this,
                    $el = $(el),
                    mlStr = 'maxLength';

                options = options || {};
                this.init();

                return $el.each(function() {

                    if (options.attr) maskObj.options.attr = options.attr;

                    var $this = $(this),
                        o = $.extend({}, maskObj.options),
                        attrValue = $this.attr(o.attr),
                        tmpMask = '';

                    // then we look for the 'attr' option
                    tmpMask = (typeof options == 'string') ? options : (attrValue !== '') ? attrValue : null;
                    if (tmpMask) o.mask = tmpMask;

                    // then we see if it's a defined mask
                    if (maskObj.masks[tmpMask]) o = $.extend(o, maskObj.masks[tmpMask]);

                    // then it looks if the options is an object, if it is we will overwrite the actual options
                    if (typeof options == 'object' && options.constructor != Array) o = $.extend(o, options);

                    //then we look for some metadata on the input
                    if ($.metadata) o = $.extend(o, $this.metadata());

                    if (o.mask != null) {

                        // prevents javascript automatic type convertion
                        o.mask += '';

                        if ($this.data('mask')) maskObj.unset($this);

                        var defaultValue = o.defaultValue,
                            reverse = (o.type === 'reverse'),
                            fixedCharsRegG = new RegExp(o.fixedChars, 'g');

                        if (o.maxLength === -1) o.maxLength = $this.attr(mlStr);

                        o = $.extend({}, o, {
                            fixedCharsReg: new RegExp(o.fixedChars),
                            fixedCharsRegG: fixedCharsRegG,
                            maskArray: o.mask.split(''),
                            maskNonFixedCharsArray: o.mask.replace(fixedCharsRegG, '').split('')
                        });

                        // setSize option (this is kept when the mask is removed)
                        if ((o.type=='fixed' || reverse) && o.setSize && !$this.attr('size')) $this.attr('size', o.mask.length);

                        // sets text-align right for reverse masks
                        if (reverse && o.textAlign) $this.css('text-align', 'right');

                        if (this.value !== '' || defaultValue !== '') {
                            // apply mask to the current value of the input or to the default value
                            var val = maskObj.string((this.value!=='') ? this.value : defaultValue, o);
                            //setting defaultValue fixes the reset button from the form
                            this.defaultValue = val;
                            $this.val(val);
                        }

                        // compatibility patch for infinite mask, that is now repeat
                        if (o.type=='infinite') o.type = 'repeat';

                        $this.data('mask', o);

                        // removes the maxLength attribute (it will be set again if you use the unset method)
                        $this.removeAttr(mlStr);

                        // setting the input events
                        $this.bind('keydown.mask', {func:maskObj._onKeyDown, thisObj:maskObj}, maskObj._onMask)
                            .bind('keypress.mask', {func:maskObj._onKeyPress, thisObj:maskObj}, maskObj._onMask)
                            .bind('keyup.mask', {func:maskObj._onKeyUp, thisObj:maskObj}, maskObj._onMask)
                            .bind('paste.mask', {func:maskObj._onPaste, thisObj:maskObj}, maskObj._onMask)
                            .bind('focus.mask', maskObj._onFocus)
                            .bind('blur.mask', maskObj._onBlur)
                            .bind('change.mask', maskObj._onChange);
                    }
                });
            },

            //unsets the mask from el
            unset: function(el) {
                var $el = $(el);

                return $el.each(function() {
                    var $this = $(this);
                    if ($this.data('mask')) {
                        var maxLength = $this.data('mask').maxLength;
                        if (maxLength != -1) $this.attr('maxLength', maxLength);
                        $this.unbind('.mask')
                            .removeData('mask');
                    }
                });
            },

            //masks a string
            string: function(str, options) {
                this.init();
                var o = {};
                if (typeof str != 'string') str = String(str);
                switch(typeof options) {
                    case 'string':
                        // then we see if it's a defined mask
                        if (this.masks[options]) o = $.extend(o, this.masks[options]);
                        else o.mask = options;
                        break;
                    case 'object':
                        o = options;
                }
                if (!o.fixedChars) o.fixedChars = this.options.fixedChars;

                var fixedCharsReg = new RegExp(o.fixedChars),
                    fixedCharsRegG = new RegExp(o.fixedChars, 'g');

                // insert signal if any
                if ((o.type === 'reverse') && o.defaultValue) {
                    if ( typeof this.signals[o.defaultValue.charAt(0)] != 'undefined' ) {
                        var maybeASignal = str.charAt(0);
                        o.signal = (typeof this.signals[maybeASignal] != 'undefined') ? this.signals[maybeASignal] : this.signals[o.defaultValue.charAt(0)];
                        o.defaultValue = o.defaultValue.substring(1);
                    }
                }

                return this.__maskArray(str.split(''),
                            o.mask.replace(fixedCharsRegG, '').split(''),
                            o.mask.split(''),
                            o.type,
                            o.maxLength,
                            o.defaultValue,
                            fixedCharsReg,
                            o.signal);
            },

            // all the 3 events below are here just to fix the change event on reversed masks.
            // It isn't fired in cases that the keypress event returns false (needed).
            _onFocus: function(e) {
                var $this = $(this), dataObj = $this.data('mask');
                dataObj.inputFocusValue = $this.val();
                dataObj.changed = false;
                if (dataObj.selectCharsOnFocus) $this.select();
            },

            _onBlur: function(e) {
                var $this = $(this), dataObj = $this.data('mask');
                if (dataObj.inputFocusValue != $this.val() && !dataObj.changed)
                    $this.trigger('change');
            },

            _onChange: function(e) {
                $(this).data('mask').changed = true;
            },

            _onMask: function(e) {
                var thisObj = e.data.thisObj,
                    o = {};

                o._this = e.target;
                o.$this = $(o._this);
                o.data = o.$this.data('mask');

                if (o.$this.attr('readonly') || !o.data) {
                    return true;
                }

                o[o.data.type] = true;
                o.value = o.$this.val();
                o.nKey = thisObj.__getKeyNumber(e);
                o.range = thisObj.__getRange(o._this);
                o.valueArray = o.value.split('');
                return e.data.func.call(thisObj, e, o);
            },

            _onKeyDown: function(e,o) {
                // lets say keypress at desktop == keydown at iphone (theres no keypress at iphone)
                this.ignore = $.inArray(o.nKey, this.ignoreKeys) > -1 || e.ctrlKey || e.metaKey || e.altKey;
                if (this.ignore) {
                    var rep = this.keyRep[o.nKey];
                    o.data.onValid.call(o._this, rep || '', o.nKey);
                }
                return isIphone ? this._onKeyPress(e, o) : true;
            },

            _onKeyUp: function(e, o) {
                //9=TAB_KEY 16=SHIFT_KEY
                //this is a little bug, when you go to an input with tab key
                //it would remove the range selected by default, and that's not a desired behavior
                if (o.nKey === 9 || o.nKey === 16) return true;

                if (o.repeat) {
                    this.__autoTab(o);
                    return true;
                }

                return this._onPaste(e, o);
            },

            _onPaste: function(e,o) {
                // changes the signal at the data obj from the input
                if (o.reverse) this.__changeSignal(e.type, o);

                var $thisVal = this.__maskArray(
                    o.valueArray,
                    o.data.maskNonFixedCharsArray,
                    o.data.maskArray,
                    o.data.type,
                    o.data.maxLength,
                    o.data.defaultValue,
                    o.data.fixedCharsReg,
                    o.data.signal
                );

                o.$this.val($thisVal);
                // this makes the caret stay at first position when
                // the user removes all values in an input and the plugin adds the default value to it (if it haves one).
                if (!o.reverse && o.data.defaultValue.length && (o.range.start === o.range.end))
                    this.__setRange(o._this, o.range.start, o.range.end);

                //fix so ie's and safari's caret won't go to the end of the input value.
                if (($.browser.msie || $.browser.safari) && !o.reverse)
                    this.__setRange(o._this,o.range.start,o.range.end);

                if (this.ignore) return true;

                this.__autoTab(o);
                return true;
            },

            _onKeyPress: function(e, o) {

                if (this.ignore) return true;

                // changes the signal at the data obj from the input
                if (o.reverse) this.__changeSignal(e.type, o);

                var c = String.fromCharCode(o.nKey),
                    rangeStart = o.range.start,
                    rawValue = o.value,
                    maskArray = o.data.maskArray;

                if (o.reverse) {
                    // the input value from the range start to the value start
                    var valueStart = rawValue.substr(0, rangeStart),
                        // the input value from the range end to the value end
                        valueEnd = rawValue.substr(o.range.end, rawValue.length);

                    rawValue = valueStart + c + valueEnd;
                    //necessary, if not decremented you will be able to input just the mask.length-1 if signal!=''
                    //ex: mask:99,999.999.999 you will be able to input 99,999.999.99
                    if (o.data.signal && (rangeStart-o.data.signal.length > 0)) {
                        rangeStart -= o.data.signal.length;
                    }
                }

                var valueArray = rawValue.replace(o.data.fixedCharsRegG, '').split(''),
                    // searches for fixed chars begining from the range start position, till it finds a non fixed
                    extraPos = this.__extraPositionsTill(rangeStart, maskArray, o.data.fixedCharsReg);

                o.rsEp = rangeStart + extraPos;

                if (o.repeat) {
                    o.rsEp = 0;
                }

                // if the rule for this character doesnt exist (value.length is bigger than mask.length)
                // added a verification for maxLength in the case of the repeat type mask
                if (!this.rules[maskArray[o.rsEp]] || (o.data.maxLength != -1 && valueArray.length >= o.data.maxLength && o.repeat)) {
                    // auto focus on the next input of the current form
                    o.data.onOverflow.call(o._this, c, o.nKey);
                    return false;
                }

                // if the new character is not obeying the law...
                else if (!this.rules[maskArray[o.rsEp]].test(c)) {
                    o.data.onInvalid.call(o._this, c, o.nKey);
                    return false;
                }

                else {
                    o.data.onValid.call(o._this, c, o.nKey);
                }

                var $thisVal = this.__maskArray(
                    valueArray,
                    o.data.maskNonFixedCharsArray,
                    maskArray,
                    o.data.type,
                    o.data.maxLength,
                    o.data.defaultValue,
                    o.data.fixedCharsReg,
                    o.data.signal,
                    extraPos
                );

                if (!o.repeat) {
                    o.$this.val($thisVal);
                }

                return (o.reverse) ? this._keyPressReverse(e, o) : (o.fixed) ? this._keyPressFixed(e, o) : true;
            },

            _keyPressFixed: function(e, o) {

                if (o.range.start == o.range.end) {
                    // the 0 thing is because theres an unwanted behavior when you put a default
                    // value on a fixed mask and you select the value from the input the range would go to the
                    // end of the string when you enter a char. with this it will overwrite the first char wich is a better behavior.
                    // opera fix, cant have range value bigger than value length, i think it loops thought the input value...
                    if ((o.rsEp === 0 && o.value.length === 0) || o.rsEp < o.value.length)
                        this.__setRange(o._this, o.rsEp, o.rsEp + 1);
                }
                else
                    this.__setRange(o._this, o.range.start, o.range.end);

                return true;
            },

            _keyPressReverse: function(e, o) {
                // fix for ie
                // this bug was pointed by Pedro Martins
                // it fixes a strange behavior that ie was having after a char was inputted in a text input that
                // had its content selected by any range
                if ($.browser.msie && ((o.range.start === 0 && o.range.end === 0) || o.range.start != o.range.end ))
                    this.__setRange(o._this, o.value.length);
                return false;
            },

            __autoTab: function(o) {
                if (o.data.autoTab && (
                        (
                            o.$this.val().length >= o.data.maskArray.length &&
                            !o.repeat
                        ) || (
                            o.data.maxLength != -1 &&
                            o.valueArray.length >= o.data.maxLength &&
                            o.repeat
                        )
                    )
                ) {
                    var nextEl = this.__getNextInput(o._this, o.data.autoTab);
                    if (nextEl) {
                        o.$this.trigger('blur');
                        nextEl.focus().select();
                    }
                }
            },

            // changes the signal at the data obj from the input
            __changeSignal: function(eventType,o) {
                if (o.data.signal !== false) {
                    var inputChar = (eventType === 'paste') ? o.value.charAt(0) : String.fromCharCode(o.nKey);
                    if (this.signals && (typeof this.signals[inputChar] !== 'undefined')) {
                        o.data.signal = this.signals[inputChar];
                    }
                }
            },

            __getKeyNumber: function(e) {
                return (e.charCode || e.keyCode || e.which);
            },

            // this function is totaly specific to be used with this plugin, youll never need it
            // it gets the array representing an unmasked string and masks it depending on the type of the mask
            __maskArray: function(valueArray, maskNonFixedCharsArray, maskArray, type, maxlength, defaultValue, fixedCharsReg, signal, extraPos) {
                if (type === 'reverse') valueArray.reverse();
                valueArray = this.__removeInvalidChars(valueArray, maskNonFixedCharsArray, type === 'repeat'||type === 'infinite');
                if (defaultValue) valueArray = this.__applyDefaultValue.call(valueArray, defaultValue);
                valueArray = this.__applyMask(valueArray, maskArray, extraPos, fixedCharsReg);
                switch(type) {
                    case 'reverse':
                        valueArray.reverse();
                        return (signal || '') + valueArray.join('').substring(valueArray.length-maskArray.length);
                    case 'infinite': case 'repeat':
                        var joinedValue = valueArray.join('');
                        return (maxlength !== -1 && valueArray.length >= maxlength) ? joinedValue.substring(0, maxlength) : joinedValue;
                    default:
                        return valueArray.join('').substring(0, maskArray.length);
                }
                return '';
            },

            // applyes the default value to the result string
            __applyDefaultValue: function(defaultValue) {
                var defLen = defaultValue.length,
                    thisLen = this.length,
                    i;
                //removes the leading chars
                for (i = thisLen-1; i >= 0; i--) {
                    if (this[i] == defaultValue.charAt(0)) {
                        this.pop();
                    }
                    else break;
                }
                // apply the default value
                for (i = 0; i < defLen; i++) if (!this[i]) {
                    this[i] = defaultValue.charAt(i);
                }

                return this;
            },

            // Removes values that doesnt match the mask from the valueArray
            // Returns the array without the invalid chars.
            __removeInvalidChars: function(valueArray, maskNonFixedCharsArray, repeatType) {
                // removes invalid chars
                for (var i=0, y=0; i<valueArray.length; i++ ) {
                    if ( maskNonFixedCharsArray[y] &&
                        this.rules[maskNonFixedCharsArray[y]] &&
                        !this.rules[maskNonFixedCharsArray[y]].test(valueArray[i]) ) {
                            valueArray.splice(i,1);
                            if (!repeatType) y--;
                            i--;
                    }
                    if (!repeatType) y++;
                }
                return valueArray;
            },

            // Apply the current input mask to the valueArray and returns it.
            __applyMask: function(valueArray, maskArray, plus, fixedCharsReg) {
                if ( typeof plus == 'undefined' ) plus = 0;
                // apply the current mask to the array of chars
                for (var i=0; i<valueArray.length+plus; i++) {
                    if ( maskArray[i] && fixedCharsReg.test(maskArray[i]))
                        valueArray.splice(i, 0, maskArray[i]);
                }
                return valueArray;
            },

            // searches for fixed chars begining from the range start position, till it finds a non fixed
            __extraPositionsTill: function(rangeStart, maskArray, fixedCharsReg) {
                var extraPos = 0;
                while (fixedCharsReg.test(maskArray[rangeStart++])) {
                    extraPos++;
                }
                return extraPos;
            },

            __getNextInput: function(input, selector) {
                var form = input.form;

                if (form == null) {
                    return null;
                }

                var formEls = form.elements,
                    initialInputIndex = $.inArray(input, formEls) + 1,
                    len = formEls.length,
                    $input = null,
                    i;

                // look for next input on the form of the pased input
                for (i = initialInputIndex; i < len; i++) {
                    $input = $(formEls[i]);
                    if (this.__isNextInput($input, selector)) {
                        return $input;
                    }
                }

                var forms = document.forms,
                    initialFormIndex = $.inArray(input.form, forms) + 1,
                    y, tmpFormEls, _len = forms.length;
                // look for the next forms for the next input
                for (y = initialFormIndex; y < _len; y++) {
                    tmpFormEls = forms[y].elements;
                    len = tmpFormEls.length;
                    for (i = 0; i < len; i++) {
                        $input = $(tmpFormEls[i]);
                        if (this.__isNextInput($input, selector)) {
                            return $input;
                        }
                    }
                }
                return null;
            },

            __isNextInput: function($formEl, selector) {
                var formEl = $formEl.get(0);
                return formEl &&
                    (formEl.offsetWidth > 0 || formEl.offsetHeight > 0) &&
                    formEl.nodeName != 'FIELDSET' &&
                    (selector === true || (typeof selector == 'string' && $formEl.is(selector)));
            },

            // http://www.bazon.net/mishoo/articles.epl?art_id=1292
            __setRange: function(input, start, end) {
                if (typeof end == 'undefined') {
                    end = start;
                }
                if (input.setSelectionRange) {
                    input.setSelectionRange(start, end);
                } else {
                    // assumed IE
                    var range = input.createTextRange();
                    range.collapse();
                    range.moveStart('character', start);
                    range.moveEnd('character', end - start);
                    range.select();
                }
            },

            // adaptation from http://digitarald.de/project/autocompleter/
            __getRange: function(input) {
                if (!$.browser.msie) return {start: input.selectionStart, end: input.selectionEnd};
                var pos = {start: 0, end: 0},
                    range = document.selection.createRange();
                pos.start = 0 - range.duplicate().moveStart('character', -100000);
                pos.end = pos.start + range.text.length;
                return pos;
            },

            //deprecated
            unmaskedVal: function(el) {
                return $(el).val().replace($.mask.fixedCharsRegG, '');
            }

        }
    });

    $.fn.extend({
        setMask: function(options) {
            return $.mask.set(this, options);
        },
        unsetMask: function() {
            return $.mask.unset(this);
        },
        //deprecated
        unmaskedVal: function() {
            return $.mask.unmaskedVal(this[0]);
        }
    });
})(jQuery);

function applyMasks(){
	
	$('.maskName').attr('alt','maskName').setMask();
	$('.maskAlphaNum').attr('alt','maskAlphaNum').setMask();
	$('.maskUnfixedNum').attr('alt','maskUnfixedNum').setMask();
	$('.maskAlphabet').attr('alt','maskAlphabet').setMask();
	
	$('.maskDecimalNinetyNine').attr('alt','maskDecimalNinetyNine').setMask().css('text-align','right');
	
	$('.maskOneHundred').attr('alt','maskOneHundred').setMask().css('text-align','right');
	$('.maskOneHundred').on('blur',function(){
		var value = parseInt($(this).val());
		
		if(value > 100){
			$(this).val('100');
		}
	});
	
	$('.maskTempCurrency').attr('alt','maskTempCurrency').setMask();
	$('.maskTempCurrency').on('blur',function(){
		if($(this).val() == '-0.00'){
			$(this).val('0.00');
		}
	});
	
	$('.maskCostValue').attr('alt','maskCostValue').setMask();
	
	$('.maskZeroToOneDecimal').attr('alt','maskZeroToOneDecimal').setMask().css('text-align','right');
	$('.maskZeroToOneDecimal').on('blur',function(){
		var value = parseFloat($(this).val());
		
		if(value > 1){
			$(this).val('1.00');
		}
	});
	
	$('.maskWholeNumber').attr('alt','maskWholeNumber').setMask().css('text-align','right');
	$('.maskNumberLimit9').attr('alt','maskNumberLimit9').setMask().css('text-align','left');
	$('.maskNumberLimit10').attr('alt','maskNumberLimit10').setMask().css('text-align','left');
	$('.maskWholeNumberOnLeft').attr('alt','maskWholeNumber').setMask().css('text-align','left');
	
	$('.maskCurrency').attr('alt','maskCurrency').setMask();
	$('.maskCurrencyOnLeft').attr('alt','maskCurrency').setMask().css('text-align','left');
	$('.maskCurrency').on('blur',function(){
		if($(this).val() == '-0.00'){
			$(this).val('0.00');
		}
	});
	
	$('.maskCurrencyPositive').attr('alt','maskCurrencyPositive').setMask();
	$('.maskCurrencyPositive').on('keyup',function(){
		if($(this).val().indexOf('-') >= 0){
			var value = $(this).val();
			$(this).val(value.substring(1, value.length));
		}
	});
	
	$('.maskCurrencyPositiveUnitCost').attr('alt','maskCurrencyPositiveUnitCost').setMask().css('text-align','left');
	$('.maskCurrencyPositiveUnitCost').on('keyup',function(){
		if($(this).val().indexOf('-') >= 0){
			var value = $(this).val();
			$(this).val(value.substring(1, value.length));
		}
	});
	
	$('.maskAge').attr('alt','maskAge').setMask();
	
	$('.maskTelephone').attr('alt','maskTelephone').setMask();
	$('.maskTelephone').on('blur',function(){
		var value = $(this).val();
		if(value == '' || value == null){
			return;
		}
	});
	
	$('.maskDatePicker').attr('alt','maskDatePicker').setMask();
	$('.maskDatePicker').on('blur',function(){
		var value = $(this).val();
		if(value == '' || value == null){
			return;
		}
	});
	
	$('.maskMobileNumber').attr('alt','maskMobileNumber').setMask();
	$('.maskSimpleMobileNumber').attr('alt','maskSimpleMobileNumber').setMask();
	
	$('.maskFax').attr('alt','maskFax').setMask();
	
	$('.maskAreaCode').attr('alt','maskAreaCode').setMask();
	
	$('.maskDecimalPercent').attr('alt','maskDecimalPercent').setMask().css('text-align','right');
	$('.maskDecimalPercent').on('blur',function(){
		var root = $(this);
		var value = root.val();
		
		if(value == '' || value == null){
			return;
		}
		
		var lastChar = value.substring(value.length-1);
		if(lastChar != '%' && lastChar != ''){
			root.val(value+'%');
		}
	});
	
	$('.maskSimpleDecimalPercent').attr('alt','maskSimpleDecimalPercent').setMask().css('text-align','right'); 
	
	$('.maskWholePercent').attr('alt','maskWholePercent').setMask().css('text-align','right');
	$('.maskWholePercent').on('blur',function(){
		var root = $(this);
		var value = root.val();
		var parsedVal;
		
		if(value == '' || value == null){
			return;
		}
		
		var lastChar = value.substring(value.length-1);
		if(lastChar != '%' && lastChar != ''){
			root.val(value+'%');
			
			parsedVal = parseFloat(value);
			if(parsedVal > 100){
				root.val('100%');
			}
		}else if(lastChar == '%'){
			parsedVal = parseFloat(0,value.substring-2);
			if(parsedVal > 100){
				root.val('100%');
			}
		}
		
	});
	
	$('.maskPercentOver100').attr('alt','maskPercentOver100').setMask().css('text-align','right');
	$('.maskPercentOver100').on('blur',function(){
		var root = $(this);
		var value = root.val();
		var parsedVal;
		
		if(value == '' || value == null){
			return;
		}
		
		var lastChar = value.substring(value.length-1);
		if(lastChar != '%' && lastChar != ''){
			root.val(value+'%');
			
			parsedVal = parseFloat(value);
		}else if(lastChar == '%'){
			parsedVal = parseFloat(0,value.substring-2);
		}
		
	});
	
	$('.maskTin').attr('alt','maskTin').setMask().css('text-align','right');
	$('.maskTin').on('blur',function(){
		var value = $(this).val();
		if(value == '' || value == null){
			return;
		}
		
		if(value.length != 15){
			promptErrorMessage('Incomplete TIN');
			$(this).val('');
		}
	});
}//end applyMasks

//call this function before submitting the form to remove the comma's
//before passing to the controller
function removeCommaFromMaskedCurrency(){
	$('.maskCurrency').each(function(){
		var rootVal = $(this).val();
		var root = $(this);
		
		//ignore blank items
		if(rootVal != null || rootVal != ''){
			var removedComma = rootVal.replace(/,/g,'');
			root.val(removedComma);
		}
	});
	
	$('.maskCurrencyOnLeft').each(function(){
		var rootVal = $(this).val();
		var root = $(this);
		
		//ignore blank items
		if(rootVal != null || rootVal != ''){
			var removedComma = rootVal.replace(/,/g,'');
			root.val(removedComma);
		}
	});
	
	$('.maskCurrencyPositive').each(function(){
		var rootVal = $(this).val();
		var root = $(this);
		
		//ignore blank items
		if(rootVal != null || rootVal != ''){
			var removedComma = rootVal.replace(/,/g,'');
			root.val(removedComma);
		}
	});
}

function removeComma(value) {
	if (value != null && value != '') {
		var removedComma = value.replace(/,/g,'');
		return Number(removedComma);
	}
}

//call this function before submitting the form to remove the percent signs
//before passing to the controller
function removePercentFromMaskedWholePercent(){
	$('.maskWholePercent').each(function(){
		var rootVal = $(this).val();
		var root = $(this);
		
		//ignore blank items
		if(rootVal != null || rootVal != ''){
			var removedPercent = rootVal.replace(/%/g,'');
			root.val(removedPercent);
		}
	});
}

function removePercent(value) {
	if (value != null && value != '') {
		var removedPercent = value.replace(/%/g,'');
		return removedPercent;
	}
}

function removePercentFromMaskedPercentOver100(){
	$('.maskPercentOver100').each(function(){
		var rootVal = $(this).val();
		var root = $(this);
		
		//ignore blank items
		if(rootVal != null || rootVal != ''){
			var removedPercentOver100 = rootVal.replace(/%/g,'');
			root.val(removedPercentOver100);
		}
	});
}

function removePercentOver100(value) {
	if (value != null && value != '') {
		var removedPercentOver100 = value.replace(/%/g,'');
		return removedPercentOver100;
	}
}

function removePercentFromMaskedDecimalPercent(){
	$('.maskDecimalPercent').each(function(){
		var rootVal = $(this).val();
		var root = $(this);
		
		//ignore blank items
		if(rootVal != null || rootVal != ''){
			var removedDecimalPercent = rootVal.replace(/%/g,'');
			root.val(removedDecimalPercent);
		}
	});
}

function removeDecimalPercent(value) {
	if (value != null && value != '') {
		var removedDecimalPercent = value.replace(/%/g,'');
		return removedDecimalPercent;
	}
}

//function to extrace currency without comma
function extractCurrency(input) {
	if(input == '' ) return '';
	
	return Number(input.replace(/,/g,''));
}

function extractPercentage(input) {
	if(input == null || input == '' ) return 0;
	return Number((input.replace('%',''))/100);
}

function extractPercentageWithoutDivide(input) {
	if(input == null || input == '' ) return 0;
	return Number((input.replace('%','')));
}

//attach % sign on masked percentage values
function applyPercentSign(){
	$('.maskWholePercent').each(function(){$(this).blur();});
	$('.maskDecimalPercent').each(function(){$(this).blur();});
	$('.maskPercentOver100').each(function(){$(this).blur();});
}

//input number output with comma! magic :)
function formatWithComma(amount) {
    var delimiter = ","; // replace comma if desired
    amount = new String(amount);
    var a = amount.split('.',2);
    var d = a[1] != null ? a[1] : '00';
    var i = parseInt(a[0]);
    if(isNaN(i)) { return ''; }
    var minus = '';
    if(i < 0) { minus = '-'; }
    i = Math.abs(i);
    var n = new String(i);
    var a = [];
    while(n.length > 3)
    {
        var nn = n.substr(n.length-3);
        a.unshift(nn);
        n = n.substr(0,n.length-3);
    }
    if(n.length > 0) { a.unshift(n); }
    n = a.join(delimiter);
    
    if(d.length < 1) { amount = n; }
    else { amount = n + '.' + d; }
    
    amount = minus + amount;
    return amount;
}

$(document).ready(function(){

	$.mask.masks = $.extend($.mask.masks, {
		maskName:				{ mask: '&', type : 'repeat', 'maxLength' : 254},
		maskAlphaNum:			{ mask: '*', type : 'repeat'},
		maskUnfixedNum:			{ mask: '%', type : 'repeat'},
		maskAlphabet:			{ mask: 'a', type : 'repeat', 'maxLength' : 254},
		maskTelephone:         	{ mask: '999-9999' },
		maskDatePicker:         { mask: '99-99-9999' },
		maskMobileNumber:     	{ mask: '(99) 999-999-9999' },
		maskSimpleMobileNumber: { mask: '9999-999-9999' },
		maskFax:     			{ mask: '999-9999' },
		maskTin:				{ mask: '999-999-999-999'},
		maskAreaCode:     		{ mask: '9999' },
		maskWholePercent:		{ mask: '999'},
		maskDecimalPercent: 	{ mask: '99.99'},
		maskSimpleDecimalPercent:{ mask: '99.99',  type : 'reverse', defaultValue: '+000'},
		maskPercentOver100:		{ mask: '999999999999999999999999999'},
		maskNumberLimit9:		{ mask: '999999999'},
		maskNumberLimit10:		{ mask: '9999999999'},
		maskWholeNumber:     	{ mask: '999999999999999999999999999'},
		maskCurrency:			{ mask: '99.999,999,999,999,999,999,999', type : 'reverse', defaultValue: '+000'},
		maskCurrencyPositive:	{ mask: '99.999,999,999,999,999,999,999', type : 'reverse', defaultValue: '+000'},
		maskCurrencyPositiveUnitCost : { mask: '99.999,999,999,999,999,999,999', type : 'reverse', defaultValue: '+000'},
		maskZeroToOneDecimal:	{ mask: '1.99', defaultValue : '000'},	
		maskAge:				{ mask: '999', defaultValue : '0', type : 'reverse' },
		
		maskCostValue:			{ mask: '99.999999999999999999999', type : 'reverse', defaultValue: '000'},
		maskOneHundred:			{ mask: '999'},
		maskDecimalNinetyNine:	{ mask: '99.99', type : 'reverse', defaultValue: '000'},
		maskTempCurrency:		{ mask: '99.999999999999999999999', type : 'reverse', defaultValue: '+000'}
	});
	
	applyMasks();
});//end document ready

