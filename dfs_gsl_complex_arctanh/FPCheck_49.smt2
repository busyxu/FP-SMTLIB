(declare-fun y_ack!190 () (_ BitVec 64))
(declare-fun x_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!191))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!191)))
                   ((_ to_fp 11 53) #x3ff000008637bd06))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) y_ack!190))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_atan2 (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) #x4000000000000000)
                             (fp.mul roundNearestTiesToEven
                                     ((_ to_fp 11 53) #xbff0000000000000)
                                     ((_ to_fp 11 53) y_ack!190)))
                     #x3feffffef39085f5)))
  (FPCHECK_FMUL_ACCURACY
    #xbff0000000000000
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!1))))

(check-sat)
(exit)
