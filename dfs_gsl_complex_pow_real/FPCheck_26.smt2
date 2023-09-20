(declare-fun x1_ack!123 () (_ BitVec 64))
(declare-fun y1_ack!122 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!123))
        (fp.abs ((_ to_fp 11 53) y1_ack!122))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) y1_ack!122))
  (fp.abs ((_ to_fp 11 53) x1_ack!123))))

(check-sat)
(exit)
