(declare-fun y1_ack!400 () (_ BitVec 64))
(declare-fun x1_ack!403 () (_ BitVec 64))
(declare-fun y2_ack!402 () (_ BitVec 64))
(declare-fun x2_ack!401 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!403))
             (fp.abs ((_ to_fp 11 53) y1_ack!400)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!403) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!401))
             (fp.abs ((_ to_fp 11 53) y2_ack!402)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!402)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_ACCURACY
    (CF_atan2 y1_ack!400 x1_ack!403)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x7ff0000000000001) a!1))))

(check-sat)
(exit)
