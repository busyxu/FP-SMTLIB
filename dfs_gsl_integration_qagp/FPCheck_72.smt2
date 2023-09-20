(declare-fun limit_ack!1242 () (_ BitVec 64))
(declare-fun epsabs_ack!1247 () (_ BitVec 64))
(declare-fun epsrel_ack!1241 () (_ BitVec 64))
(declare-fun a_ack!1248 () (_ BitVec 64))
(declare-fun x1_ack!1243 () (_ BitVec 64))
(declare-fun x2_ack!1244 () (_ BitVec 64))
(declare-fun x3_ack!1245 () (_ BitVec 64))
(declare-fun b_ack!1246 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1242)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1247) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1241)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1241)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1243) ((_ to_fp 11 53) a_ack!1248))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1244) ((_ to_fp 11 53) x1_ack!1243))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1245) ((_ to_fp 11 53) x2_ack!1244))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1246) ((_ to_fp 11 53) x3_ack!1245))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1248)
                                   ((_ to_fp 11 53) x1_ack!1243))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1243)
                  ((_ to_fp 11 53) a_ack!1248)))
  #x3febae995e9cb2f3))

(check-sat)
(exit)
