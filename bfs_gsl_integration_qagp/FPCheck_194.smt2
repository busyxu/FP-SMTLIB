(declare-fun limit_ack!2981 () (_ BitVec 64))
(declare-fun epsabs_ack!2986 () (_ BitVec 64))
(declare-fun a_ack!2987 () (_ BitVec 64))
(declare-fun x1_ack!2982 () (_ BitVec 64))
(declare-fun x2_ack!2983 () (_ BitVec 64))
(declare-fun x3_ack!2984 () (_ BitVec 64))
(declare-fun b_ack!2985 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2981)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2986)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2982) ((_ to_fp 11 53) a_ack!2987))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2983) ((_ to_fp 11 53) x1_ack!2982))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2984) ((_ to_fp 11 53) x2_ack!2983))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2985) ((_ to_fp 11 53) x3_ack!2984))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2987)
                                   ((_ to_fp 11 53) x1_ack!2982))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2982)
                                   ((_ to_fp 11 53) a_ack!2987)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2987)
                                   ((_ to_fp 11 53) x1_ack!2982)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
