(declare-fun limit_ack!5550 () (_ BitVec 64))
(declare-fun epsabs_ack!5555 () (_ BitVec 64))
(declare-fun a_ack!5556 () (_ BitVec 64))
(declare-fun x1_ack!5551 () (_ BitVec 64))
(declare-fun x2_ack!5552 () (_ BitVec 64))
(declare-fun x3_ack!5553 () (_ BitVec 64))
(declare-fun b_ack!5554 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5550)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5555)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5551) ((_ to_fp 11 53) a_ack!5556))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5552) ((_ to_fp 11 53) x1_ack!5551))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5553) ((_ to_fp 11 53) x2_ack!5552))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5554) ((_ to_fp 11 53) x3_ack!5553))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5551))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5551)
                  ((_ to_fp 11 53) a_ack!5556)))
  #x3fe8fc7574fa6c62))

(check-sat)
(exit)
