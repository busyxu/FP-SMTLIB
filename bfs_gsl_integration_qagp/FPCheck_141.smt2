(declare-fun limit_ack!2176 () (_ BitVec 64))
(declare-fun epsabs_ack!2181 () (_ BitVec 64))
(declare-fun a_ack!2182 () (_ BitVec 64))
(declare-fun x1_ack!2177 () (_ BitVec 64))
(declare-fun x2_ack!2178 () (_ BitVec 64))
(declare-fun x3_ack!2179 () (_ BitVec 64))
(declare-fun b_ack!2180 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2176)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2181)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2177) ((_ to_fp 11 53) a_ack!2182))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2178) ((_ to_fp 11 53) x1_ack!2177))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2179) ((_ to_fp 11 53) x2_ack!2178))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2180) ((_ to_fp 11 53) x3_ack!2179))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2182)
                                   ((_ to_fp 11 53) x1_ack!2177))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2177)
                                   ((_ to_fp 11 53) a_ack!2182)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2182)
                                   ((_ to_fp 11 53) x1_ack!2177)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
