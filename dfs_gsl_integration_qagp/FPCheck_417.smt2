(declare-fun limit_ack!7154 () (_ BitVec 64))
(declare-fun epsabs_ack!7159 () (_ BitVec 64))
(declare-fun epsrel_ack!7153 () (_ BitVec 64))
(declare-fun a_ack!7160 () (_ BitVec 64))
(declare-fun x1_ack!7155 () (_ BitVec 64))
(declare-fun x2_ack!7156 () (_ BitVec 64))
(declare-fun x3_ack!7157 () (_ BitVec 64))
(declare-fun b_ack!7158 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7154)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7159) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7153)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7153)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7155) ((_ to_fp 11 53) a_ack!7160))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7156) ((_ to_fp 11 53) x1_ack!7155))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7157) ((_ to_fp 11 53) x2_ack!7156))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7158) ((_ to_fp 11 53) x3_ack!7157))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7160)
                                   ((_ to_fp 11 53) x1_ack!7155))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7155)
                                   ((_ to_fp 11 53) a_ack!7160)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7160)
                                   ((_ to_fp 11 53) x1_ack!7155)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
