(declare-fun limit_ack!4983 () (_ BitVec 64))
(declare-fun epsabs_ack!4988 () (_ BitVec 64))
(declare-fun a_ack!4989 () (_ BitVec 64))
(declare-fun x1_ack!4984 () (_ BitVec 64))
(declare-fun x2_ack!4985 () (_ BitVec 64))
(declare-fun x3_ack!4986 () (_ BitVec 64))
(declare-fun b_ack!4987 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4983)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4988)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4984) ((_ to_fp 11 53) a_ack!4989))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4985) ((_ to_fp 11 53) x1_ack!4984))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4986) ((_ to_fp 11 53) x2_ack!4985))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4987) ((_ to_fp 11 53) x3_ack!4986))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4989)
                                   ((_ to_fp 11 53) x1_ack!4984))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4984)
                                   ((_ to_fp 11 53) a_ack!4989)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4989)
                                   ((_ to_fp 11 53) x1_ack!4984)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
