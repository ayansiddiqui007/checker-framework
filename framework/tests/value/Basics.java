import org.checkerframework.common.value.qual.*;

//:: warning: (too.many.values)
class Basics {

    public void boolTest() {
        boolean a = false;
        if (true) {
            a = true;
        }
        @BoolVal({ true, false }) boolean b = a;

        //:: error: (assignment.type.incompatible)
        @BoolVal({ false }) boolean c = a;
    }

    public void CharacterTest() {
        Character a = 'a';
        if (true) {
            a = 'b';
        }
        @IntVal({ 'a', 'b' }) Character b = a;

        //:: error: (assignment.type.incompatible)
        @IntVal({ 'a' }) Character c = a;
    }

    public void charTest() {
        char a = 'a';
        if (true) {
            a = 'b';
        }
        @IntVal({ 'a', 'b' }) char b = a;

        //:: error: (assignment.type.incompatible)
        @IntVal({ 'a' }) char c = a;
    }

    public void DoubleTest() {
        Double a = new Double(0.0);
        if (true) {
            a = 2.0;
        }
        @DoubleVal({ 0, 2 }) Double b = a;

        //:: error: (assignment.type.incompatible)
        @DoubleVal({ 0 }) Double c = a;

    }

    public void doubleTest() {
        double a = 0.0;
        if (true) {
            a = 2.0;
        }
        @DoubleVal({ 0, 2 }) double b = a;

        //:: error: (assignment.type.incompatible)
        @DoubleVal({ 0 }) double c = a;

    }

    public void FloatTest() {
        Float a = new Float(0.0f);
        if (true) {
            a = 2.0f;
        }
        @DoubleVal({ 0, 2 }) Float b = a;

        //:: error: (assignment.type.incompatible)
        @DoubleVal({ 0 }) Float c = a;

    }

    public void floatTest() {
        float a = 0.0f;
        if (true) {
            a = 2.0f;
        }
        @DoubleVal({ 0, 2 }) float b = a;

        //:: error: (assignment.type.incompatible)
        @DoubleVal({ 'a' }) float c = a;

    }

    public void intTest() {
        int a = 0;
        if (true) {
            a = 2;
        }
        @IntVal({ 0, 2 }) int b = a;

        //:: error: (assignment.type.incompatible)
        @IntVal({ 0 }) int c = a;
    }

    public void IntegerTest() {
        Integer a = new Integer(0);
        if (true) {
            a = 2;
        }
        @IntVal({ 0, 2 }) Integer b = a;

        //:: error: (assignment.type.incompatible)
        @IntVal({ 0 }) Integer c = a;
    }

    public void stringTest() {
        String a = "test1";
        if (true) {
            a = "test2";
        }
        @StringVal({ "test1", "test2" }) String b = a;

        //:: error: (assignment.type.incompatible)
        @StringVal({ "test1" }) String c = a;
    }

    public void stringCastTest() {
        Object a = "test1";
        @StringVal({ "test1" }) String b = (String) a;
        @StringVal({ "test1" }) String c = (java.lang.String) b;
    }

    void tooManyValues(int a){
        int b = -1;
        switch(a){
        case 0: 
            b = 0;
        case 1:
            b = 1;
        case 2:
            b = 2;
        case 3:
            b = 3;
        case 4:
            b = 4;
        case 5:
            b = 5;
        case 6:
            b = 6;
        case 7:
            b = 7;
        case 8:
            b = 8;
        }

    
    } 
}
