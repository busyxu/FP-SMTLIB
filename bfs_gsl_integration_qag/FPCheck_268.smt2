(declare-fun key_ack!2880 () (_ BitVec 32))
(declare-fun limit_ack!2879 () (_ BitVec 64))
(declare-fun epsabs_ack!2878 () (_ BitVec 64))
(declare-fun b_ack!2877 () (_ BitVec 64))
(declare-fun a_ack!2881 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!2880 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2880)))
(assert (= #x00000001 key_ack!2880))
(assert (not (bvult #x00000000000003e8 limit_ack!2879)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2878)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2881)
                                   ((_ to_fp 11 53) b_ack!2877))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2877)
                                   ((_ to_fp 11 53) a_ack!2881)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2881)
                    ((_ to_fp 11 53) b_ack!2877)))
    a!1)))

(check-sat)
(exit)
