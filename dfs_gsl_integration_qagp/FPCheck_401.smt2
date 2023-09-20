(declare-fun limit_ack!6826 () (_ BitVec 64))
(declare-fun epsabs_ack!6831 () (_ BitVec 64))
(declare-fun epsrel_ack!6825 () (_ BitVec 64))
(declare-fun a_ack!6832 () (_ BitVec 64))
(declare-fun x1_ack!6827 () (_ BitVec 64))
(declare-fun x2_ack!6828 () (_ BitVec 64))
(declare-fun x3_ack!6829 () (_ BitVec 64))
(declare-fun b_ack!6830 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6826)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6831) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6825)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6825)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6827) ((_ to_fp 11 53) a_ack!6832))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6828) ((_ to_fp 11 53) x1_ack!6827))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6829) ((_ to_fp 11 53) x2_ack!6828))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6830) ((_ to_fp 11 53) x3_ack!6829))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6832)
                                   ((_ to_fp 11 53) x1_ack!6827))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6827)
                                   ((_ to_fp 11 53) a_ack!6832)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6832)
                    ((_ to_fp 11 53) x1_ack!6827)))
    a!1)))

(check-sat)
(exit)
