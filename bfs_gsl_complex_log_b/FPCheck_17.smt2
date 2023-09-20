(declare-fun y1_ack!74 () (_ BitVec 64))
(declare-fun x1_ack!77 () (_ BitVec 64))
(declare-fun y2_ack!76 () (_ BitVec 64))
(declare-fun x2_ack!75 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!77))
             (fp.abs ((_ to_fp 11 53) y1_ack!74)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!77) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!75))
        (fp.abs ((_ to_fp 11 53) y2_ack!76))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y2_ack!76))
  (fp.abs ((_ to_fp 11 53) x2_ack!75))))

(check-sat)
(exit)
