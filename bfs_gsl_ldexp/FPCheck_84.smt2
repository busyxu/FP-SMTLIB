(declare-fun x_ack!340 () (_ BitVec 64))
(declare-fun e_ack!339 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!340)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!340))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not (not a!1))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!339)
             ((_ to_fp 11 53) #x4090000000000000))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!339)
        ((_ to_fp 11 53) #xc08fe80000000000)))
(assert (let ((a!1 (CF_pow #x4000000000000000
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     e_ack!339)
                                   ((_ to_fp 11 53) #xc08fe80000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) x_ack!340) a!1)
    #x0030000000000000)))

(check-sat)
(exit)
