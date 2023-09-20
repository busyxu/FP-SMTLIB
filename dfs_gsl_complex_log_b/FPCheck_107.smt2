(declare-fun y1_ack!850 () (_ BitVec 64))
(declare-fun x1_ack!853 () (_ BitVec 64))
(declare-fun y2_ack!852 () (_ BitVec 64))
(declare-fun x2_ack!851 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!853))
             (fp.abs ((_ to_fp 11 53) y1_ack!850)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!853) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!851))
        (fp.abs ((_ to_fp 11 53) y2_ack!852))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y2_ack!852))
  (fp.abs ((_ to_fp 11 53) x2_ack!851))))

(check-sat)
(exit)
