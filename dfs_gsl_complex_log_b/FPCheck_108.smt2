(declare-fun y1_ack!858 () (_ BitVec 64))
(declare-fun x1_ack!861 () (_ BitVec 64))
(declare-fun y2_ack!860 () (_ BitVec 64))
(declare-fun x2_ack!859 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!861))
             (fp.abs ((_ to_fp 11 53) y1_ack!858)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!861) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!859))
        (fp.abs ((_ to_fp 11 53) y2_ack!860))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) y2_ack!860))
  (fp.abs ((_ to_fp 11 53) x2_ack!859))))

(check-sat)
(exit)
