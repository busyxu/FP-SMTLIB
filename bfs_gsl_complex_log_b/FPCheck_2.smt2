(declare-fun y1_ack!8 () (_ BitVec 64))
(declare-fun x1_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!9)) (fp.abs ((_ to_fp 11 53) y1_ack!8))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) y1_ack!8))
  (fp.abs ((_ to_fp 11 53) x1_ack!9))))

(check-sat)
(exit)
