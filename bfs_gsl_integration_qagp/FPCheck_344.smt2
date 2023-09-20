(declare-fun limit_ack!5207 () (_ BitVec 64))
(declare-fun epsabs_ack!5212 () (_ BitVec 64))
(declare-fun a_ack!5213 () (_ BitVec 64))
(declare-fun x1_ack!5208 () (_ BitVec 64))
(declare-fun x2_ack!5209 () (_ BitVec 64))
(declare-fun x3_ack!5210 () (_ BitVec 64))
(declare-fun b_ack!5211 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5207)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5212)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5208) ((_ to_fp 11 53) a_ack!5213))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5209) ((_ to_fp 11 53) x1_ack!5208))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5210) ((_ to_fp 11 53) x2_ack!5209))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5211) ((_ to_fp 11 53) x3_ack!5210))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5213)
                                   ((_ to_fp 11 53) x1_ack!5208))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5208)
                                   ((_ to_fp 11 53) a_ack!5213)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5213)
                                   ((_ to_fp 11 53) x1_ack!5208)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
