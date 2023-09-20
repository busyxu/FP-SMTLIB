(declare-fun limit_ack!3970 () (_ BitVec 64))
(declare-fun epsabs_ack!3975 () (_ BitVec 64))
(declare-fun epsrel_ack!3969 () (_ BitVec 64))
(declare-fun a_ack!3976 () (_ BitVec 64))
(declare-fun x1_ack!3971 () (_ BitVec 64))
(declare-fun x2_ack!3972 () (_ BitVec 64))
(declare-fun x3_ack!3973 () (_ BitVec 64))
(declare-fun b_ack!3974 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3970)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3975) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3969)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3969)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3971) ((_ to_fp 11 53) a_ack!3976))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3972) ((_ to_fp 11 53) x1_ack!3971))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3973) ((_ to_fp 11 53) x2_ack!3972))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3974) ((_ to_fp 11 53) x3_ack!3973))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3976)
                                   ((_ to_fp 11 53) x1_ack!3971))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3971)
                                   ((_ to_fp 11 53) a_ack!3976)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3976)
                                   ((_ to_fp 11 53) x1_ack!3971)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
