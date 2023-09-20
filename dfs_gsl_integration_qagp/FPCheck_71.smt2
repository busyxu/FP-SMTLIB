(declare-fun limit_ack!1226 () (_ BitVec 64))
(declare-fun epsabs_ack!1231 () (_ BitVec 64))
(declare-fun epsrel_ack!1225 () (_ BitVec 64))
(declare-fun a_ack!1232 () (_ BitVec 64))
(declare-fun x1_ack!1227 () (_ BitVec 64))
(declare-fun x2_ack!1228 () (_ BitVec 64))
(declare-fun x3_ack!1229 () (_ BitVec 64))
(declare-fun b_ack!1230 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1226)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1231) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1225)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1225)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1227) ((_ to_fp 11 53) a_ack!1232))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1228) ((_ to_fp 11 53) x1_ack!1227))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1229) ((_ to_fp 11 53) x2_ack!1228))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1230) ((_ to_fp 11 53) x3_ack!1229))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1232)
                                   ((_ to_fp 11 53) x1_ack!1227))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1227)
                  ((_ to_fp 11 53) a_ack!1232)))
  #x3febae995e9cb2f3))

(check-sat)
(exit)
