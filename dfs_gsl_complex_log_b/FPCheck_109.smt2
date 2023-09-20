(declare-fun y1_ack!866 () (_ BitVec 64))
(declare-fun x1_ack!869 () (_ BitVec 64))
(declare-fun y2_ack!868 () (_ BitVec 64))
(declare-fun x2_ack!867 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!869))
             (fp.abs ((_ to_fp 11 53) y1_ack!866)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!869) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!867))
        (fp.abs ((_ to_fp 11 53) y2_ack!868))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) y2_ack!868))
  (fp.abs ((_ to_fp 11 53) x2_ack!867))))

(check-sat)
(exit)
