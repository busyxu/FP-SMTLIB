(declare-fun limit_ack!7482 () (_ BitVec 64))
(declare-fun epsabs_ack!7487 () (_ BitVec 64))
(declare-fun epsrel_ack!7481 () (_ BitVec 64))
(declare-fun a_ack!7488 () (_ BitVec 64))
(declare-fun x1_ack!7483 () (_ BitVec 64))
(declare-fun x2_ack!7484 () (_ BitVec 64))
(declare-fun x3_ack!7485 () (_ BitVec 64))
(declare-fun b_ack!7486 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7482)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7487) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7481)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7481)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7483) ((_ to_fp 11 53) a_ack!7488))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7484) ((_ to_fp 11 53) x1_ack!7483))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7485) ((_ to_fp 11 53) x2_ack!7484))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7486) ((_ to_fp 11 53) x3_ack!7485))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7488)
                                   ((_ to_fp 11 53) x1_ack!7483))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7483)
                  ((_ to_fp 11 53) a_ack!7488)))
  #x3fd2d755295ea137))

(check-sat)
(exit)
