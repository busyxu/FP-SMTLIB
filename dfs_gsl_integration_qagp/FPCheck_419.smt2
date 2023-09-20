(declare-fun limit_ack!7178 () (_ BitVec 64))
(declare-fun epsabs_ack!7183 () (_ BitVec 64))
(declare-fun epsrel_ack!7177 () (_ BitVec 64))
(declare-fun a_ack!7184 () (_ BitVec 64))
(declare-fun x1_ack!7179 () (_ BitVec 64))
(declare-fun x2_ack!7180 () (_ BitVec 64))
(declare-fun x3_ack!7181 () (_ BitVec 64))
(declare-fun b_ack!7182 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!7178)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7183) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7177)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7177)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7179) ((_ to_fp 11 53) a_ack!7184))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7180) ((_ to_fp 11 53) x1_ack!7179))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7181) ((_ to_fp 11 53) x2_ack!7180))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7182) ((_ to_fp 11 53) x3_ack!7181))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7184)
                                   ((_ to_fp 11 53) x1_ack!7179))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7179)
                                   ((_ to_fp 11 53) a_ack!7184)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7184)
                                   ((_ to_fp 11 53) x1_ack!7179)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
