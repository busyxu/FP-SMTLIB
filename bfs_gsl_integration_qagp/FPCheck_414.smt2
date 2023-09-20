(declare-fun limit_ack!6222 () (_ BitVec 64))
(declare-fun epsabs_ack!6227 () (_ BitVec 64))
(declare-fun a_ack!6228 () (_ BitVec 64))
(declare-fun x1_ack!6223 () (_ BitVec 64))
(declare-fun x2_ack!6224 () (_ BitVec 64))
(declare-fun x3_ack!6225 () (_ BitVec 64))
(declare-fun b_ack!6226 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6222)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6227)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6223) ((_ to_fp 11 53) a_ack!6228))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6224) ((_ to_fp 11 53) x1_ack!6223))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6225) ((_ to_fp 11 53) x2_ack!6224))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6226) ((_ to_fp 11 53) x3_ack!6225))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6228)
                                   ((_ to_fp 11 53) x1_ack!6223))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6223)
                                   ((_ to_fp 11 53) a_ack!6228)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6228)
                    ((_ to_fp 11 53) x1_ack!6223)))
    a!1)))

(check-sat)
(exit)
