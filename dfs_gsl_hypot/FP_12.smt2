(declare-fun a_ack!151 () (_ BitVec 64))
(declare-fun b_ack!150 () (_ BitVec 64))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!151)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!150)) #x01 #x00))))
  (= a!1 #b1)))
(assert (let ((a!1 (= #x00000000
              (ite (fp.gt ((_ to_fp 11 53) b_ack!150)
                          ((_ to_fp 11 53) #x0000000000000000))
                   #x00000001
                   #xffffffff))))
  (not a!1)))
(assert (= #x00000000
   (ite (fp.gt ((_ to_fp 11 53) b_ack!150) ((_ to_fp 11 53) #x0000000000000000))
        #x00000001
        #xffffffff)))

(check-sat)
(exit)
