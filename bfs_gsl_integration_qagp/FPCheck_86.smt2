(declare-fun limit_ack!1350 () (_ BitVec 64))
(declare-fun epsabs_ack!1355 () (_ BitVec 64))
(declare-fun a_ack!1356 () (_ BitVec 64))
(declare-fun x1_ack!1351 () (_ BitVec 64))
(declare-fun x2_ack!1352 () (_ BitVec 64))
(declare-fun x3_ack!1353 () (_ BitVec 64))
(declare-fun b_ack!1354 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1350)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1355)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1351) ((_ to_fp 11 53) a_ack!1356))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1352) ((_ to_fp 11 53) x1_ack!1351))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1353) ((_ to_fp 11 53) x2_ack!1352))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1354) ((_ to_fp 11 53) x3_ack!1353))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1356)
                                   ((_ to_fp 11 53) x1_ack!1351))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1351)
                  ((_ to_fp 11 53) a_ack!1356)))
  #x3febae995e9cb2f3))

(check-sat)
(exit)
