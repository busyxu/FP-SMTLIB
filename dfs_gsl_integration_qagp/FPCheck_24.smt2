(declare-fun limit_ack!434 () (_ BitVec 64))
(declare-fun epsabs_ack!439 () (_ BitVec 64))
(declare-fun epsrel_ack!433 () (_ BitVec 64))
(declare-fun a_ack!440 () (_ BitVec 64))
(declare-fun x1_ack!435 () (_ BitVec 64))
(declare-fun x2_ack!436 () (_ BitVec 64))
(declare-fun x3_ack!437 () (_ BitVec 64))
(declare-fun b_ack!438 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!434)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!439) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!433)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!433)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!435) ((_ to_fp 11 53) a_ack!440))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!436) ((_ to_fp 11 53) x1_ack!435))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!437) ((_ to_fp 11 53) x2_ack!436))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!438) ((_ to_fp 11 53) x3_ack!437))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!440)
                                   ((_ to_fp 11 53) x1_ack!435))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!435)
                  ((_ to_fp 11 53) a_ack!440)))
  #x3fef2a3e062af2d8))

(check-sat)
(exit)
