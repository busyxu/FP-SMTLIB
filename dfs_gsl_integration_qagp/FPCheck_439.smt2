(declare-fun limit_ack!7466 () (_ BitVec 64))
(declare-fun epsabs_ack!7471 () (_ BitVec 64))
(declare-fun epsrel_ack!7465 () (_ BitVec 64))
(declare-fun a_ack!7472 () (_ BitVec 64))
(declare-fun x1_ack!7467 () (_ BitVec 64))
(declare-fun x2_ack!7468 () (_ BitVec 64))
(declare-fun x3_ack!7469 () (_ BitVec 64))
(declare-fun b_ack!7470 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7466)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7471) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7465)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7465)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7467) ((_ to_fp 11 53) a_ack!7472))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7468) ((_ to_fp 11 53) x1_ack!7467))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7469) ((_ to_fp 11 53) x2_ack!7468))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7470) ((_ to_fp 11 53) x3_ack!7469))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7472)
                                   ((_ to_fp 11 53) x1_ack!7467))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7467)
                  ((_ to_fp 11 53) a_ack!7472)))
  #x3fd2d755295ea137))

(check-sat)
(exit)
