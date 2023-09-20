(declare-fun limit_ack!7139 () (_ BitVec 64))
(declare-fun epsabs_ack!7144 () (_ BitVec 64))
(declare-fun a_ack!7145 () (_ BitVec 64))
(declare-fun x1_ack!7140 () (_ BitVec 64))
(declare-fun x2_ack!7141 () (_ BitVec 64))
(declare-fun x3_ack!7142 () (_ BitVec 64))
(declare-fun b_ack!7143 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7139)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7144)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7140) ((_ to_fp 11 53) a_ack!7145))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7141) ((_ to_fp 11 53) x1_ack!7140))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7142) ((_ to_fp 11 53) x2_ack!7141))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7143) ((_ to_fp 11 53) x3_ack!7142))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7145)
                                   ((_ to_fp 11 53) x1_ack!7140))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7140)
                                   ((_ to_fp 11 53) a_ack!7145)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7145)
                                   ((_ to_fp 11 53) x1_ack!7140)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
