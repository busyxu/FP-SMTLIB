(declare-fun limit_ack!7562 () (_ BitVec 64))
(declare-fun epsabs_ack!7567 () (_ BitVec 64))
(declare-fun epsrel_ack!7561 () (_ BitVec 64))
(declare-fun a_ack!7568 () (_ BitVec 64))
(declare-fun x1_ack!7563 () (_ BitVec 64))
(declare-fun x2_ack!7564 () (_ BitVec 64))
(declare-fun x3_ack!7565 () (_ BitVec 64))
(declare-fun b_ack!7566 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7562)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7567) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7561)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7561)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7563) ((_ to_fp 11 53) a_ack!7568))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7564) ((_ to_fp 11 53) x1_ack!7563))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7565) ((_ to_fp 11 53) x2_ack!7564))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7566) ((_ to_fp 11 53) x3_ack!7565))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7568)
                                   ((_ to_fp 11 53) x1_ack!7563))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7563)
                                   ((_ to_fp 11 53) a_ack!7568)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7568)
                    ((_ to_fp 11 53) x1_ack!7563)))
    a!1)))

(check-sat)
(exit)
