(declare-fun limit_ack!7034 () (_ BitVec 64))
(declare-fun epsabs_ack!7039 () (_ BitVec 64))
(declare-fun epsrel_ack!7033 () (_ BitVec 64))
(declare-fun a_ack!7040 () (_ BitVec 64))
(declare-fun x1_ack!7035 () (_ BitVec 64))
(declare-fun x2_ack!7036 () (_ BitVec 64))
(declare-fun x3_ack!7037 () (_ BitVec 64))
(declare-fun b_ack!7038 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7034)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7033)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7033)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7035) ((_ to_fp 11 53) a_ack!7040))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7036) ((_ to_fp 11 53) x1_ack!7035))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7037) ((_ to_fp 11 53) x2_ack!7036))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7038) ((_ to_fp 11 53) x3_ack!7037))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7040)
                                   ((_ to_fp 11 53) x1_ack!7035))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7035)
                                   ((_ to_fp 11 53) a_ack!7040)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7040)
                    ((_ to_fp 11 53) x1_ack!7035)))
    a!1)))

(check-sat)
(exit)
