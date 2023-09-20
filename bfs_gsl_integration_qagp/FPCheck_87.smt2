(declare-fun limit_ack!1364 () (_ BitVec 64))
(declare-fun epsabs_ack!1369 () (_ BitVec 64))
(declare-fun a_ack!1370 () (_ BitVec 64))
(declare-fun x1_ack!1365 () (_ BitVec 64))
(declare-fun x2_ack!1366 () (_ BitVec 64))
(declare-fun x3_ack!1367 () (_ BitVec 64))
(declare-fun b_ack!1368 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1364)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1369)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1365) ((_ to_fp 11 53) a_ack!1370))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1366) ((_ to_fp 11 53) x1_ack!1365))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1367) ((_ to_fp 11 53) x2_ack!1366))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1368) ((_ to_fp 11 53) x3_ack!1367))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1370)
                                   ((_ to_fp 11 53) x1_ack!1365))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1365)
                  ((_ to_fp 11 53) a_ack!1370)))
  #x3febae995e9cb2f3))

(check-sat)
(exit)
