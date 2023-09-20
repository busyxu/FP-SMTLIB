(declare-fun a_ack!157 () (_ BitVec 64))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!157)) #x01 #x00))))
  (= a!1 #b1)))
(assert (= #x00000000
   (ite (fp.gt ((_ to_fp 11 53) a_ack!157) ((_ to_fp 11 53) #x0000000000000000))
        #x00000001
        #xffffffff)))

(check-sat)
(exit)
