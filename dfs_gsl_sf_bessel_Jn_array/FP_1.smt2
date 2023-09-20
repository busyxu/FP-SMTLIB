(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun b_ack!3 () (_ BitVec 32))
(declare-fun c_ack!4 () (_ BitVec 64))
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (not (bvslt b_ack!3 a_ack!5)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle a_ack!5 b_ack!3))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) (bvsub b_ack!3 a_ack!5)))
       #x0000000000000319))
(assert (bvsle a_ack!5 (bvadd #xffffffff b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffff (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffff (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffffe b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffe (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffe (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffffd b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffd (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffd (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffffc b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffc (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffc (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffffb b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffb (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffb (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffffa b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffa (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffffa (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff9 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff9 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff9 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff8 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff8 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff8 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff7 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff7 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff7 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff6 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff6 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff6 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff5 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff5 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff5 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff4 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff4 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff4 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff3 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff3 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff3 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff2 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff2 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff2 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff1 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff1 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff1 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xfffffff0 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff0 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xfffffff0 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffef b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffef (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffef (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffee b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffee (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffee (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffed b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffed (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffed (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffec b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffec (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffec (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffeb b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffeb (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffeb (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffea b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffea (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffea (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe9 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe9 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe9 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe8 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe8 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe8 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe7 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe7 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe7 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe6 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe6 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe6 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe5 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe5 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe5 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe4 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe4 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe4 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe3 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe3 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe3 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe2 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe2 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe2 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe1 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe1 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe1 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffe0 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe0 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffe0 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffdf b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdf (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdf (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffde b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffde (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffde (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffdd b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdd (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdd (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffdc b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdc (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdc (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffdb b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdb (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffdb (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffda b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffda (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffda (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd9 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd9 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd9 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd8 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd8 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd8 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd7 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd7 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd7 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd6 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd6 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd6 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd5 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd5 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd5 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd4 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd4 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd4 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd3 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd3 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd3 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd2 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd2 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd2 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd1 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd1 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd1 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffd0 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd0 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffd0 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffcf b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcf (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcf (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffce b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffce (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffce (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffcd b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcd (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcd (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffcc b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcc (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcc (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffcb b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcb (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffcb (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffca b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffca (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffca (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc9 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc9 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc9 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc8 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc8 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc8 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc7 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc7 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc7 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc6 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc6 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc6 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc5 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc5 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc5 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc4 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc4 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc4 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc3 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc3 (bvsub b_ack!3 a_ack!5))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc3 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))
(assert (bvsle a_ack!5 (bvadd #xffffffc2 b_ack!3)))
(assert (let ((a!1 (bvmul #x0000000000000008
                  ((_ sign_extend 32)
                    (bvadd #xffffffc2 (bvsub b_ack!3 a_ack!5))))))
  (bvult a!1 #x0000000000000319)))

(check-sat)
(exit)
