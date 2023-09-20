(declare-fun limit_ack!5634 () (_ BitVec 64))
(declare-fun epsabs_ack!5639 () (_ BitVec 64))
(declare-fun epsrel_ack!5633 () (_ BitVec 64))
(declare-fun a_ack!5640 () (_ BitVec 64))
(declare-fun x1_ack!5635 () (_ BitVec 64))
(declare-fun x2_ack!5636 () (_ BitVec 64))
(declare-fun x3_ack!5637 () (_ BitVec 64))
(declare-fun b_ack!5638 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5634)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5639) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5633)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5633)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5635) ((_ to_fp 11 53) a_ack!5640))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5636) ((_ to_fp 11 53) x1_ack!5635))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5637) ((_ to_fp 11 53) x2_ack!5636))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5638) ((_ to_fp 11 53) x3_ack!5637))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5640)
                                   ((_ to_fp 11 53) x1_ack!5635))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5635)
                                   ((_ to_fp 11 53) a_ack!5640)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5640)
                                   ((_ to_fp 11 53) x1_ack!5635)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
