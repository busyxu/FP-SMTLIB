(declare-fun limit_ack!7050 () (_ BitVec 64))
(declare-fun epsabs_ack!7055 () (_ BitVec 64))
(declare-fun epsrel_ack!7049 () (_ BitVec 64))
(declare-fun a_ack!7056 () (_ BitVec 64))
(declare-fun x1_ack!7051 () (_ BitVec 64))
(declare-fun x2_ack!7052 () (_ BitVec 64))
(declare-fun x3_ack!7053 () (_ BitVec 64))
(declare-fun b_ack!7054 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7050)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7055) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7049)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7049)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7051) ((_ to_fp 11 53) a_ack!7056))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7052) ((_ to_fp 11 53) x1_ack!7051))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7053) ((_ to_fp 11 53) x2_ack!7052))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7054) ((_ to_fp 11 53) x3_ack!7053))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7056)
                                   ((_ to_fp 11 53) x1_ack!7051))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7051)
                                   ((_ to_fp 11 53) a_ack!7056)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7056)
                    ((_ to_fp 11 53) x1_ack!7051)))
    a!1)))

(check-sat)
(exit)
