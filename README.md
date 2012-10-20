#YHCPickerView

![image](https://lh6.googleusercontent.com/-RIFuyfPqJns/UIKfVxUUu4I/AAAAAAAAAGM/v47WtyCAdCQ/s480/YHCPickerView_1.png)
![image](https://lh6.googleusercontent.com/-VlbPDTPYN5s/UIKfW9PscLI/AAAAAAAAAGU/9WXKemUsHTc/s480/YHCPickerView_2.png)


##YHCPickerView

If you want searching functionality in UIPickerView then YHCPickerView is for you!

##Features
* Search among hundreds of records from UIPickerView
* get selectedIndex and selectedText

##How To

* Drag the `YHCPickerView` to your project


``` objective-c

- (IBAction)btnShowPickerClick:(id)sender {
    

    YHCPickerView *objYHCPickerView = [[YHCPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) withNSArray:countriesArray];
    
    objYHCPickerView.delegate = self;
    [self.view addSubview:objYHCPickerView];
    [objYHCPickerView showPicker];
}

-(void)selectedRow:(int)row withString:(NSString *)text{
    
    NSLog(@"%d",row);
    lblIndex.text = [NSString stringWithFormat:@"%d",row];
    lblText.text = text;
    
}

```

##License

YHCPickerView is available under the MIT License.

Copyright (c) 2012 Yashesh Chauhan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

## Credits

IAInfiniteGridView was created by [Yashesh Chauhan](https://github.com/yashesh87) 

Feel free to contact me,

- [@chauhan_yashesh] (http://twitter.com/chauhan_yashesh)
- http://www.yashesh.in