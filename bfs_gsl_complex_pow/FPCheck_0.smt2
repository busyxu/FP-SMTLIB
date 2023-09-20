(declare-fun x1_ack!3 () (_ BitVec 64))
(declare-fun x2_ack!2 () (_ BitVec 64))
(declare-fun y1_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!3) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!3)) (fp.abs ((_ to_fp 11 53) y1_ack!1))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) y1_ack!1))
  (fp.abs ((_ to_fp 11 53) x1_ack!3))))

(check-sat)
(exit)
