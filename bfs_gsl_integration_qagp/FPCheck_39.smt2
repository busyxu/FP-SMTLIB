(declare-fun limit_ack!657 () (_ BitVec 64))
(declare-fun epsabs_ack!662 () (_ BitVec 64))
(declare-fun a_ack!663 () (_ BitVec 64))
(declare-fun x1_ack!658 () (_ BitVec 64))
(declare-fun x2_ack!659 () (_ BitVec 64))
(declare-fun x3_ack!660 () (_ BitVec 64))
(declare-fun b_ack!661 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!657)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!662)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!658) ((_ to_fp 11 53) a_ack!663))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!659) ((_ to_fp 11 53) x1_ack!658))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!660) ((_ to_fp 11 53) x2_ack!659))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!661) ((_ to_fp 11 53) x3_ack!660))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!663)
                                   ((_ to_fp 11 53) x1_ack!658))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!658)
                  ((_ to_fp 11 53) a_ack!663)))
  #x3fef2a3e062af2d8))

(check-sat)
(exit)
