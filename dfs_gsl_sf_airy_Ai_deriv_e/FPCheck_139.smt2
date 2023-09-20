(declare-fun a_ack!430 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!430)
                       ((_ to_fp 11 53) a_ack!430))
               ((_ to_fp 11 53) a_ack!430))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!430)
                                   ((_ to_fp 11 53) a_ack!430))
                           ((_ to_fp 11 53) a_ack!430)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_ACCURACY #x4000000000000000 a!2))))

(check-sat)
(exit)
