(declare-fun key_ack!2760 () (_ BitVec 32))
(declare-fun limit_ack!2759 () (_ BitVec 64))
(declare-fun epsabs_ack!2758 () (_ BitVec 64))
(declare-fun b_ack!2757 () (_ BitVec 64))
(declare-fun a_ack!2761 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!2760 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2760)))
(assert (= #x00000001 key_ack!2760))
(assert (not (bvult #x00000000000003e8 limit_ack!2759)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2758)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2761)
                                   ((_ to_fp 11 53) b_ack!2757))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2757)
                                   ((_ to_fp 11 53) a_ack!2761)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2761)
                    ((_ to_fp 11 53) b_ack!2757)))
    a!1)))

(check-sat)
(exit)
