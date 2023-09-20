(declare-fun limit_ack!629 () (_ BitVec 64))
(declare-fun epsabs_ack!634 () (_ BitVec 64))
(declare-fun a_ack!635 () (_ BitVec 64))
(declare-fun x1_ack!630 () (_ BitVec 64))
(declare-fun x2_ack!631 () (_ BitVec 64))
(declare-fun x3_ack!632 () (_ BitVec 64))
(declare-fun b_ack!633 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!629)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!634)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!630) ((_ to_fp 11 53) a_ack!635))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!631) ((_ to_fp 11 53) x1_ack!630))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!632) ((_ to_fp 11 53) x2_ack!631))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!633) ((_ to_fp 11 53) x3_ack!632))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!635)
                                   ((_ to_fp 11 53) x1_ack!630))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!630)
                  ((_ to_fp 11 53) a_ack!635)))
  #x3fef2a3e062af2d8))

(check-sat)
(exit)
