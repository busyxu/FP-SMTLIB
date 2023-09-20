(declare-fun x1_ack!418 () (_ BitVec 64))
(declare-fun y1_ack!415 () (_ BitVec 64))
(declare-fun x2_ack!416 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!417 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!418) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!415) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!416) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!416) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!418))
             (fp.abs ((_ to_fp 11 53) y1_ack!415)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!418) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!415) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!415)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
(let ((a!2 (CF_exp (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) x2_ack!416))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!417)
                                   (CF_atan2 y1_ack!415 x1_ack!418)))))
      (a!3 (CF_cos (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_atan2 y1_ack!415 x1_ack!418)
                                   ((_ to_fp 11 53) x2_ack!416))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!417)
                                   a!1)))))
  (FPCHECK_FMUL_ACCURACY a!2 a!3))))

(check-sat)
(exit)
