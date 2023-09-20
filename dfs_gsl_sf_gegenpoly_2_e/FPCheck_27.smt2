(declare-fun a_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!97 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!98))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!98)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!98))
               ((_ to_fp 11 53) a_ack!98))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!98)))
                   ((_ to_fp 11 53) b_ack!97))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!98)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!97))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cb0000000000000
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.abs a!2))
            (fp.abs ((_ to_fp 11 53) a_ack!98)))))))

(check-sat)
(exit)
