(declare-fun a_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!69))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!69))
             ((_ to_fp 11 53) #x3fd8000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!69))
            ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!69))
             ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!69))
             ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!69))
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!69))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!69))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!69))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) a_ack!69))
        ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!69)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    (fp.abs a!3)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x3c8cd2b297d889bc)))))))

(check-sat)
(exit)
