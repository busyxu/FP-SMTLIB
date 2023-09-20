(declare-fun y1_ack!312 () (_ BitVec 64))
(declare-fun x1_ack!315 () (_ BitVec 64))
(declare-fun y2_ack!314 () (_ BitVec 64))
(declare-fun x2_ack!313 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!315))
             (fp.abs ((_ to_fp 11 53) y1_ack!312)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!313))
             (fp.abs ((_ to_fp 11 53) y2_ack!314)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!313) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!312)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!314)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x7ff0000000000001) a!2))))

(check-sat)
(exit)
