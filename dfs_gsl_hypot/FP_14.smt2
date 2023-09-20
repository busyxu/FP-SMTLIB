(declare-fun a_ack!154 () (_ BitVec 64))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!154)) #x01 #x00))))
  (= a!1 #b1)))

(check-sat)
(exit)
