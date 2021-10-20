public class x {
    public static byte getCheckSum(byte[] arrby) {
        int n2;
        if (arrby == null || arrby.length < 0) {
            return 0;
        }
        int n3 = 0;
        for (n2 = 0; n2 < arrby.length; ++n2) {
            n3 += arrby[n2] & 255;
        }
        n2 = n3;
        if (n3 > 255) {
            n2 = n3 + 1;
        }
        return (byte)(n2 & 255);
    }

    public static void main(String[] args) {
        byte[] HEAD = new byte[]{84,69};
        byte[] data={ (byte) 0xeb, (byte) 0x50, (byte) 0x50, (byte) 0x00, (byte) 0x05 };
        byte by = getCheckSum(data);
        
        // ByteBuffer byteBuffer2 = ByteBuffer.allocate(7);
        // byteBuffer2.put(HEAD);
        // byteBuffer2.put(data);

        // StringBuffer result = new StringBuffer();
        byte[] bytes = {(byte) 0x84, (byte) 0x69, (byte) 0xeb, (byte) 0x50, (byte) 0x50, (byte) 0x00, (byte) 0x05}
        final StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", b & 0xff));
        }
        for (byte b : byteBuffer2) {
            result.append(String.format("%02x", b));
        }

        int data2=0 - getCheckSum(data) + 1;
        String check = String.format("%02x",data2 & 0xff);

        System.out.println("Control command: "+result+check+"00");
    }
}