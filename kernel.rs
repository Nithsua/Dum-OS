fn main() {
    unsafe {
        let video_memory = 0xb8000_usize as *mut char;
        *video_memory = 'X';
    }
}
