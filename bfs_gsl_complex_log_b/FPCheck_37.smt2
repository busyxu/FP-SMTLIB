(declare-fun y1_ack!204 () (_ BitVec 64))
(declare-fun x1_ack!207 () (_ BitVec 64))
(declare-fun y2_ack!206 () (_ BitVec 64))
(declare-fun x2_ack!205 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!207))
             (fp.abs ((_ to_fp 11 53) y1_ack!204)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!207) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!205))
             (fp.abs ((_ to_fp 11 53) y2_ack!206)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x2_ack!205))
          (fp.abs ((_ to_fp 11 53) y2_ack!206)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x2_ack!205))
          (fp.abs ((_ to_fp 11 53) y2_ack!206)))))

(check-sat)
(exit)
