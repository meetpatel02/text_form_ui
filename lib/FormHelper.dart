library snippetcoder_utils;

import 'package:flutter/material.dart';

class FormHelper {
  static Widget inputFieldWidget(
      BuildContext context,
      String keyName,
      String hintText,
      Function onValidate,
      Function onSaved, {
        String initialValue = "",
        obscureText= false,
        double fontSize = 18,
        double hintFontSize = 15,
        double paddingLeft = 20,
        double paddingRight = 20,
        double paddingTop = 0,
        double paddingBottom = 0,
        Icon? prefixIcon,
        Widget? suffixIcon,
        double borderRadius = 30,
        Color borderColor = Colors.redAccent,
        Color borderFocusColor = Colors.redAccent,
        double borderWidth = 2,
        double focusedBorderWidth = 2,
        double enabledBorderWidth = 1,
        bool showPrefixIcon = false,
        Color prefixIconColor = Colors.redAccent,
        double prefixIconPaddingLeft = 30,
        double prefixIconPaddingRight = 10,
        double prefixIconPaddingTop = 0,
        double prefixIconPaddingBottom = 0,
        bool isMultiline = false,
        Function? onChange,
        Color textColor = Colors.black,
        Color hintColor = Colors.black,
        Color validationColor = Colors.redAccent,
        double contentPadding = 6,
        int multilineRows = 4,
        bool isNumeric = false,
        Color backgroundColor = Colors.transparent,
      }) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        top: paddingTop,
        bottom: paddingBottom,
      ),
      child: TextFormField(
        initialValue: initialValue,
        key: new Key(initialValue.toString()),
        obscureText: obscureText,
        keyboardType: isNumeric ? TextInputType.number : null,
        maxLines: isMultiline ? multilineRows : 1,
        validator: (val) {
          return onValidate(val);
        },
        onSaved: (val) {
          return onSaved(val);
        },
        onChanged: (val) {
          return onChange != null ? onChange(val) : null;
        },
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          contentPadding: EdgeInsets.all(contentPadding),
          errorStyle: TextStyle(
            color: validationColor,
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: hintFontSize,
            color: hintColor,
          ),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
              width: enabledBorderWidth,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderFocusColor,
              width: focusedBorderWidth,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: showPrefixIcon
              ? Padding(
            child: IconTheme(
              data: IconThemeData(color: prefixIconColor),
              child: prefixIcon!,
            ),
            padding: EdgeInsets.only(
              left: prefixIconPaddingLeft,
              right: prefixIconPaddingRight,
              top: prefixIconPaddingTop,
              bottom: prefixIconPaddingBottom,
            ),
          )
              : null,
        ),
      ),
    );
  }

  static Widget inputFieldWidgetWithLabel(
      BuildContext context,
      String keyName,
      String labelName,
      String hintText,
      Function onValidate,
      Function onSaved, {
        String initialValue = "",
        obscureText: false,
        double labelFontSize: 20,
        bool labelBold = true,
        double fontSize = 18,
        double hintFontSize = 15,
        double paddingLeft = 20,
        double paddingRight = 20,
        double paddingTop = 0,
        double paddingBottom = 0,
        Widget? suffixIcon,
        Icon? prefixIcon,
        double borderRadius = 30,
        Color borderColor = Colors.redAccent,
        Color borderFocusColor = Colors.redAccent,
        double borderWidth = 2,
        double focusedBorderWidth = 2,
        double enabledBorderWidth = 1,
        bool showPrefixIcon = false,
        Color prefixIconColor = Colors.redAccent,
        double prefixIconPaddingLeft = 30,
        double prefixIconPaddingRight = 10,
        double prefixIconPaddingTop = 0,
        double prefixIconPaddingBottom = 0,
        double containerHeight = 60,
        double containerWidth = 0,
        bool isMultiline = false,
        Function? onChange,
        Color textColor = Colors.black,
        Color hintColor = Colors.black,
        Color validationColor = Colors.redAccent,
        double contentPadding = 6,
        int multilineRows = 4,
        bool isNumeric = false,
        Color backgroundColor = Colors.transparent,
      }) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(
              left: 0,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                labelName,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: labelFontSize,
                  fontWeight: labelBold ? FontWeight.bold : null,
                ),
              ),
            ),
          ),
          inputFieldWidget(
            context,
            keyName,
            hintText,
            onValidate,
            onSaved,
            initialValue: initialValue,
            obscureText: obscureText,
            fontSize: fontSize,
            hintFontSize: hintFontSize,
            paddingLeft: paddingLeft,
            paddingRight: paddingRight,
            paddingTop: paddingTop,
            paddingBottom: paddingBottom,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            borderRadius: borderRadius,
            borderColor: borderColor,
            borderFocusColor: borderFocusColor,
            borderWidth: borderWidth,
            enabledBorderWidth: enabledBorderWidth,
            focusedBorderWidth: focusedBorderWidth,
            showPrefixIcon: showPrefixIcon,
            prefixIconColor: prefixIconColor,
            prefixIconPaddingLeft: prefixIconPaddingLeft,
            prefixIconPaddingRight: prefixIconPaddingRight,
            prefixIconPaddingTop: prefixIconPaddingTop,
            prefixIconPaddingBottom: prefixIconPaddingBottom,
            onChange: onChange,
            isMultiline: isMultiline,
            textColor: textColor,
            hintColor: hintColor,
            validationColor: validationColor,
            multilineRows: multilineRows,
            contentPadding: contentPadding,
            isNumeric: isNumeric,
            backgroundColor: backgroundColor,
          ),
        ],
      ),
    );
  }

  static Widget submitButton(
      String buttonText,
      Function onTap, {
        double height = 50,
        double width = 150,
        Color btnColor = Colors.redAccent,
        double borderRadius = 30,
        Color borderColor = Colors.redAccent,
        double fontSize = 16,
        FontWeight fontWeight = FontWeight.w600,
        Color txtColor = Colors.white,
      }) {
    return Container(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: btnColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: txtColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showSimpleAlertDialog(
      BuildContext context,
      String title,
      String message,
      String buttonText,
      Function onPressed,
      ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content: new Text(message),
          actions: [
            // submitButton(
            //   buttonText,
            //   onPressed(),
            // ),
            new TextButton(
              onPressed: () {
                return onPressed();
              },
              child: new Text(buttonText),
            )
          ],
        );
      },
    );
  }

  static Widget dropDownWidget(
      BuildContext context,
      String hintText,
      dynamic value,
      List<dynamic> lstData,
      Function onChanged,
      Function onValidate, {
        double hintFontSize = 10,
        Color borderColor = Colors.redAccent,
        double borderRadius = 30,
        Color borderFocusColor = Colors.redAccent,
        double paddingLeft = 10,
        double paddingRight = 20,
        double paddingTop = 0,
        double paddingBottom = 0,
        String optionValue = "id",
        String optionLabel = "name",
        double contentPadding = 6,
        Color validationColor = Colors.redAccent,
        Color textColor = Colors.black,
        Color hintColor = Colors.black,
        double borderWidth = 2,
        double focusedBorderWidth = 2,
        double enabledBorderWidth = 1,
        Widget? suffixIcon,
        Icon? prefixIcon,
        bool showPrefixIcon = false,
        Color prefixIconColor = Colors.redAccent,
        double prefixIconPaddingLeft = 30,
        double prefixIconPaddingRight = 10,
        double prefixIconPaddingTop = 0,
        double prefixIconPaddingBottom = 0,
      }) {
    if (value != "") {
      var findValue = lstData
          .where((item) => item[optionValue].toString() == value.toString());

      if (findValue.length > 0) {
        value = findValue.first[optionValue].toString();
      } else {
        value = null;
      }
    }

    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        top: paddingTop,
        bottom: paddingBottom,
      ),
      child: FormField<dynamic>(
        builder: (FormFieldState<dynamic> state) {
          return DropdownButtonFormField<String>(
            isExpanded: true,
            value: value != "" ? value : null,
            isDense: true,
            hint: Text(
              hintText,
              style: TextStyle(
                fontSize: hintFontSize,
              ),
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(contentPadding),
              errorStyle: TextStyle(
                color: validationColor,
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: hintFontSize,
                color: hintColor,
              ),
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: borderColor,
                  width: enabledBorderWidth,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: borderColor,
                  width: borderWidth,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderFocusColor,
                  width: focusedBorderWidth,
                ),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              suffixIcon: suffixIcon,
              prefixIcon: showPrefixIcon
                  ? Padding(
                child: IconTheme(
                  data: IconThemeData(color: prefixIconColor),
                  child: prefixIcon!,
                ),
                padding: EdgeInsets.only(
                  left: prefixIconPaddingLeft,
                  right: prefixIconPaddingRight,
                  top: prefixIconPaddingTop,
                  bottom: prefixIconPaddingBottom,
                ),
              )
                  : null,
            ),
            // decoration: InputDecoration(
            //   contentPadding: EdgeInsets.all(contentPadding),
            //   hintStyle: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: hintFontSize,
            //   ),
            //   enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(borderRadius),
            //     borderSide: BorderSide(
            //       color: borderColor,
            //       width: 1,
            //     ),
            //   ),
            //   border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(borderRadius),
            //     borderSide: BorderSide(
            //       color: borderColor,
            //       width: 2,
            //     ),
            //   ),
            //   focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(
            //       color: borderFocusColor,
            //       width: 2.0,
            //     ),
            //     borderRadius: BorderRadius.circular(borderRadius),
            //   ),
            // ),
            onChanged: (countries) {
              //  FocusScope.of(context).requestFocus(new FocusNode());
              state.didChange(countries);
              return onChanged(countries);
            },
            validator: (countries) {
              return onValidate(countries);
            },
            items: lstData.map<DropdownMenuItem<String>>(
                  (dynamic data) {
                return DropdownMenuItem<String>(
                  value: data[optionValue].toString(),
                  child: new Text(
                    data[optionLabel],
                    style: new TextStyle(color: Colors.black, fontSize: 13),
                  ),
                );
              },
            ).toList(),
          );
        },
      ),
    );
  }

  static InputDecoration fieldDecoration(
      BuildContext context,
      String hintText,
      String helperText, {
        Widget? prefixIcon,
        Widget? suffixIcon,
      }) {
    return InputDecoration(
      // contentPadding: EdgeInsets.all(6),
      hintText: hintText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
      ),
    );
  }

  static dropDownWidgetWithLabel(
      BuildContext context,
      String labelName,
      String hintText,
      dynamic value,
      List<dynamic> lstData,
      Function onChanged,
      Function onValidate, {
        double labelFontSize: 20,
        bool labelBold = true,
        double hintFontSize = 15,
        Color borderColor = Colors.redAccent,
        double borderRadius = 30,
        Color borderFocusColor = Colors.redAccent,
        double paddingLeft = 20,
        double paddingRight = 20,
        double paddingTop = 0,
        double paddingBottom = 0,
        String optionValue = "id",
        String optionLabel = "name",
        double contentPadding = 6,
        Color validationColor = Colors.redAccent,
        Color textColor = Colors.black,
        Color hintColor = Colors.black,
        double borderWidth = 2,
        double focusedBorderWidth = 2,
        double enabledBorderWidth = 1,
        Widget? suffixIcon,
        Icon? prefixIcon,
        bool showPrefixIcon = false,
        Color prefixIconColor = Colors.redAccent,
        double prefixIconPaddingLeft = 30,
        double prefixIconPaddingRight = 10,
        double prefixIconPaddingTop = 0,
        double prefixIconPaddingBottom = 0,
      }) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(
              left: 0,
              right: 10,
              top: 10,
              bottom: 10,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                labelName,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: labelFontSize,
                  fontWeight: labelBold ? FontWeight.bold : null,
                ),
              ),
            ),
          ),
          dropDownWidget(
            context,
            hintText,
            value,
            lstData,
            onChanged,
            onValidate,
            hintFontSize: hintFontSize,
            borderColor: borderColor,
            borderRadius: borderRadius,
            borderFocusColor: borderFocusColor,
            paddingLeft: paddingLeft,
            paddingRight: paddingRight,
            paddingTop: paddingTop,
            paddingBottom: paddingBottom,
            optionValue: optionValue,
            optionLabel: optionLabel,
            contentPadding: contentPadding,
            validationColor: validationColor,
            textColor: textColor,
            hintColor: hintColor,
            borderWidth: borderWidth,
            focusedBorderWidth: focusedBorderWidth,
            enabledBorderWidth: enabledBorderWidth,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            showPrefixIcon: showPrefixIcon,
            prefixIconColor: prefixIconColor,
            prefixIconPaddingLeft: prefixIconPaddingLeft,
            prefixIconPaddingRight: prefixIconPaddingRight,
            prefixIconPaddingTop: prefixIconPaddingTop,
            prefixIconPaddingBottom: prefixIconPaddingBottom,
          )
        ],
      ),
    );
  }
}