(declare-fun y1_ack!164 () (_ BitVec 64))
(declare-fun x1_ack!167 () (_ BitVec 64))
(declare-fun y2_ack!166 () (_ BitVec 64))
(declare-fun x2_ack!165 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!167))
             (fp.abs ((_ to_fp 11 53) y1_ack!164)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!165))
             (fp.abs ((_ to_fp 11 53) y2_ack!166)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x2_ack!165))
  (fp.abs ((_ to_fp 11 53) y2_ack!166))))

(check-sat)
(exit)
