(declare-fun limit_ack!402 () (_ BitVec 64))
(declare-fun epsabs_ack!407 () (_ BitVec 64))
(declare-fun epsrel_ack!401 () (_ BitVec 64))
(declare-fun a_ack!408 () (_ BitVec 64))
(declare-fun x1_ack!403 () (_ BitVec 64))
(declare-fun x2_ack!404 () (_ BitVec 64))
(declare-fun x3_ack!405 () (_ BitVec 64))
(declare-fun b_ack!406 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!402)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!407) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!401)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!401)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!403) ((_ to_fp 11 53) a_ack!408))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!404) ((_ to_fp 11 53) x1_ack!403))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!405) ((_ to_fp 11 53) x2_ack!404))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!406) ((_ to_fp 11 53) x3_ack!405))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!408)
                                   ((_ to_fp 11 53) x1_ack!403))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!403)
                  ((_ to_fp 11 53) a_ack!408)))
  #x3fef2a3e062af2d8))

(check-sat)
(exit)
