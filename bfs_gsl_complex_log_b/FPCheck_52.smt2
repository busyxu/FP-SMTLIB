(declare-fun y1_ack!320 () (_ BitVec 64))
(declare-fun x1_ack!323 () (_ BitVec 64))
(declare-fun y2_ack!322 () (_ BitVec 64))
(declare-fun x2_ack!321 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!323))
             (fp.abs ((_ to_fp 11 53) y1_ack!320)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!323) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!321))
             (fp.abs ((_ to_fp 11 53) y2_ack!322)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!321) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (CF_atan2 y1_ack!320 x1_ack!323)
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x7ff0000000000001)
          (CF_atan2 y2_ack!322 x2_ack!321))))

(check-sat)
(exit)
