(declare-fun limit_ack!958 () (_ BitVec 64))
(declare-fun epsabs_ack!963 () (_ BitVec 64))
(declare-fun a_ack!964 () (_ BitVec 64))
(declare-fun x1_ack!959 () (_ BitVec 64))
(declare-fun x2_ack!960 () (_ BitVec 64))
(declare-fun x3_ack!961 () (_ BitVec 64))
(declare-fun b_ack!962 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!958)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!963)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!959) ((_ to_fp 11 53) a_ack!964))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!960) ((_ to_fp 11 53) x1_ack!959))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!961) ((_ to_fp 11 53) x2_ack!960))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!962) ((_ to_fp 11 53) x3_ack!961))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!964)
                                   ((_ to_fp 11 53) x1_ack!959))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!959)
                                   ((_ to_fp 11 53) a_ack!964)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!964)
                                   ((_ to_fp 11 53) x1_ack!959)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
