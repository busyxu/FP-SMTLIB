(declare-fun limit_ack!1043 () (_ BitVec 64))
(declare-fun epsabs_ack!1042 () (_ BitVec 64))
(declare-fun b_ack!1041 () (_ BitVec 64))
(declare-fun a_ack!1044 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1043)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1042)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1044)
                                   ((_ to_fp 11 53) b_ack!1041))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1041)
                                   ((_ to_fp 11 53) a_ack!1044)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1044)
                    ((_ to_fp 11 53) b_ack!1041)))
    a!1)))

(check-sat)
(exit)
