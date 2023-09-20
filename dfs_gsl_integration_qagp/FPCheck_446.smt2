(declare-fun limit_ack!7602 () (_ BitVec 64))
(declare-fun epsabs_ack!7607 () (_ BitVec 64))
(declare-fun epsrel_ack!7601 () (_ BitVec 64))
(declare-fun a_ack!7608 () (_ BitVec 64))
(declare-fun x1_ack!7603 () (_ BitVec 64))
(declare-fun x2_ack!7604 () (_ BitVec 64))
(declare-fun x3_ack!7605 () (_ BitVec 64))
(declare-fun b_ack!7606 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7602)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7607) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7601)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7601)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7603) ((_ to_fp 11 53) a_ack!7608))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7604) ((_ to_fp 11 53) x1_ack!7603))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7605) ((_ to_fp 11 53) x2_ack!7604))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7606) ((_ to_fp 11 53) x3_ack!7605))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7608)
                                   ((_ to_fp 11 53) x1_ack!7603))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7603)
                                   ((_ to_fp 11 53) a_ack!7608)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7608)
                                   ((_ to_fp 11 53) x1_ack!7603)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
