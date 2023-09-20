(declare-fun key_ack!5185 () (_ BitVec 32))
(declare-fun limit_ack!5184 () (_ BitVec 64))
(declare-fun epsabs_ack!5183 () (_ BitVec 64))
(declare-fun b_ack!5182 () (_ BitVec 64))
(declare-fun a_ack!5186 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt key_ack!5185 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!5185)))
(assert (= #x00000001 key_ack!5185))
(assert (not (bvult #x00000000000003e8 limit_ack!5184)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5183)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5186)
                                   ((_ to_fp 11 53) b_ack!5182))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5182)
                                   ((_ to_fp 11 53) a_ack!5186)))
                   ((_ to_fp 11 53) #x3fca98b2892e0c77))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5186)
                                   ((_ to_fp 11 53) b_ack!5182)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
