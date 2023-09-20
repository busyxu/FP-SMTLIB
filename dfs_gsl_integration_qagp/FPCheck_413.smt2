(declare-fun limit_ack!7074 () (_ BitVec 64))
(declare-fun epsabs_ack!7079 () (_ BitVec 64))
(declare-fun epsrel_ack!7073 () (_ BitVec 64))
(declare-fun a_ack!7080 () (_ BitVec 64))
(declare-fun x1_ack!7075 () (_ BitVec 64))
(declare-fun x2_ack!7076 () (_ BitVec 64))
(declare-fun x3_ack!7077 () (_ BitVec 64))
(declare-fun b_ack!7078 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7074)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7079) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7073)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7073)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7075) ((_ to_fp 11 53) a_ack!7080))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7076) ((_ to_fp 11 53) x1_ack!7075))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7077) ((_ to_fp 11 53) x2_ack!7076))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7078) ((_ to_fp 11 53) x3_ack!7077))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7080)
                                   ((_ to_fp 11 53) x1_ack!7075))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7075)
                                   ((_ to_fp 11 53) a_ack!7080)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7080)
                                   ((_ to_fp 11 53) x1_ack!7075)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
