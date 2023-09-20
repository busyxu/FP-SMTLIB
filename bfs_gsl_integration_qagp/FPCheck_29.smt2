(declare-fun limit_ack!487 () (_ BitVec 64))
(declare-fun epsabs_ack!492 () (_ BitVec 64))
(declare-fun epsrel_ack!486 () (_ BitVec 64))
(declare-fun a_ack!493 () (_ BitVec 64))
(declare-fun x1_ack!488 () (_ BitVec 64))
(declare-fun x2_ack!489 () (_ BitVec 64))
(declare-fun x3_ack!490 () (_ BitVec 64))
(declare-fun b_ack!491 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!487)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!492) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!486)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!486)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!488) ((_ to_fp 11 53) a_ack!493))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!489) ((_ to_fp 11 53) x1_ack!488))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!490) ((_ to_fp 11 53) x2_ack!489))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) x3_ack!490))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!493)
                  ((_ to_fp 11 53) x1_ack!488)))))

(check-sat)
(exit)
