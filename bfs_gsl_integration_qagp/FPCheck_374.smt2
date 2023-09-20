(declare-fun limit_ack!5627 () (_ BitVec 64))
(declare-fun epsabs_ack!5632 () (_ BitVec 64))
(declare-fun a_ack!5633 () (_ BitVec 64))
(declare-fun x1_ack!5628 () (_ BitVec 64))
(declare-fun x2_ack!5629 () (_ BitVec 64))
(declare-fun x3_ack!5630 () (_ BitVec 64))
(declare-fun b_ack!5631 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5627)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5632)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5628) ((_ to_fp 11 53) a_ack!5633))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5629) ((_ to_fp 11 53) x1_ack!5628))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5630) ((_ to_fp 11 53) x2_ack!5629))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5631) ((_ to_fp 11 53) x3_ack!5630))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5633)
                                   ((_ to_fp 11 53) x1_ack!5628))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5628)
                                   ((_ to_fp 11 53) a_ack!5633)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5633)
                                   ((_ to_fp 11 53) x1_ack!5628)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
