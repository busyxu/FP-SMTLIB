(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun b_ack!64 () (_ BitVec 64))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!65)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!64)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!65))
            (fp.abs ((_ to_fp 11 53) b_ack!64)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!64))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
