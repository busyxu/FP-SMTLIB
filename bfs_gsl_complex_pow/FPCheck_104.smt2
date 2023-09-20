(declare-fun x1_ack!682 () (_ BitVec 64))
(declare-fun x2_ack!680 () (_ BitVec 64))
(declare-fun y1_ack!679 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!681 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!682) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!680) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!680) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!682))
        (fp.abs ((_ to_fp 11 53) y1_ack!679))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!682) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!682)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (CF_exp (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) x2_ack!680))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!681)
                                   (CF_atan2 y1_ack!679 x1_ack!682)))))
      (a!3 (CF_cos (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_atan2 y1_ack!679 x1_ack!682)
                                   ((_ to_fp 11 53) x2_ack!680))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!681)
                                   a!1)))))
  (FPCHECK_FMUL_ACCURACY a!2 a!3))))

(check-sat)
(exit)
