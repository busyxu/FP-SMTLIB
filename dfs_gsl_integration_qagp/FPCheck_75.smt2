(declare-fun limit_ack!1306 () (_ BitVec 64))
(declare-fun epsabs_ack!1311 () (_ BitVec 64))
(declare-fun epsrel_ack!1305 () (_ BitVec 64))
(declare-fun a_ack!1312 () (_ BitVec 64))
(declare-fun x1_ack!1307 () (_ BitVec 64))
(declare-fun x2_ack!1308 () (_ BitVec 64))
(declare-fun x3_ack!1309 () (_ BitVec 64))
(declare-fun b_ack!1310 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1306)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1311) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1305)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1305)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1307) ((_ to_fp 11 53) a_ack!1312))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1308) ((_ to_fp 11 53) x1_ack!1307))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1309) ((_ to_fp 11 53) x2_ack!1308))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1310) ((_ to_fp 11 53) x3_ack!1309))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1312)
                                   ((_ to_fp 11 53) x1_ack!1307))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1307)
                                   ((_ to_fp 11 53) a_ack!1312)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1312)
                    ((_ to_fp 11 53) x1_ack!1307)))
    a!1)))

(check-sat)
(exit)
