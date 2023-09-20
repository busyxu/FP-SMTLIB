(declare-fun y1_ack!802 () (_ BitVec 64))
(declare-fun x1_ack!803 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!803))
             (fp.abs ((_ to_fp 11 53) y1_ack!802)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) x1_ack!803))
  (fp.abs ((_ to_fp 11 53) y1_ack!802))))

(check-sat)
(exit)
