(declare-fun key_ack!2860 () (_ BitVec 32))
(declare-fun limit_ack!2859 () (_ BitVec 64))
(declare-fun epsabs_ack!2858 () (_ BitVec 64))
(declare-fun b_ack!2857 () (_ BitVec 64))
(declare-fun a_ack!2861 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!2860 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2860)))
(assert (= #x00000001 key_ack!2860))
(assert (not (bvult #x00000000000003e8 limit_ack!2859)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2858)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2861)
                                   ((_ to_fp 11 53) b_ack!2857))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2857)
                                   ((_ to_fp 11 53) a_ack!2861)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2861)
                                   ((_ to_fp 11 53) b_ack!2857)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
