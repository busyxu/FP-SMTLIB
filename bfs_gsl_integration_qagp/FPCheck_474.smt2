(declare-fun limit_ack!7167 () (_ BitVec 64))
(declare-fun epsabs_ack!7172 () (_ BitVec 64))
(declare-fun a_ack!7173 () (_ BitVec 64))
(declare-fun x1_ack!7168 () (_ BitVec 64))
(declare-fun x2_ack!7169 () (_ BitVec 64))
(declare-fun x3_ack!7170 () (_ BitVec 64))
(declare-fun b_ack!7171 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7167)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7172)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7168) ((_ to_fp 11 53) a_ack!7173))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7169) ((_ to_fp 11 53) x1_ack!7168))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7170) ((_ to_fp 11 53) x2_ack!7169))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7171) ((_ to_fp 11 53) x3_ack!7170))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7173)
                                   ((_ to_fp 11 53) x1_ack!7168))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7168)
                                   ((_ to_fp 11 53) a_ack!7173)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7173)
                                   ((_ to_fp 11 53) x1_ack!7168)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
