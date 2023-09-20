(declare-fun limit_ack!1000 () (_ BitVec 64))
(declare-fun epsabs_ack!1005 () (_ BitVec 64))
(declare-fun a_ack!1006 () (_ BitVec 64))
(declare-fun x1_ack!1001 () (_ BitVec 64))
(declare-fun x2_ack!1002 () (_ BitVec 64))
(declare-fun x3_ack!1003 () (_ BitVec 64))
(declare-fun b_ack!1004 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1000)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1005)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1001) ((_ to_fp 11 53) a_ack!1006))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1002) ((_ to_fp 11 53) x1_ack!1001))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1003) ((_ to_fp 11 53) x2_ack!1002))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1004) ((_ to_fp 11 53) x3_ack!1003))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1006)
                                   ((_ to_fp 11 53) x1_ack!1001))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1001)
                                   ((_ to_fp 11 53) a_ack!1006)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1006)
                                   ((_ to_fp 11 53) x1_ack!1001)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
