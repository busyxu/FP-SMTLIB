(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun b_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!11)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!10)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!11))
            (fp.abs ((_ to_fp 11 53) b_ack!10)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!10))
  (fp.abs ((_ to_fp 11 53) a_ack!11))))

(check-sat)
(exit)
