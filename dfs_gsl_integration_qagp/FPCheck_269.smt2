(declare-fun limit_ack!4554 () (_ BitVec 64))
(declare-fun epsabs_ack!4559 () (_ BitVec 64))
(declare-fun epsrel_ack!4553 () (_ BitVec 64))
(declare-fun a_ack!4560 () (_ BitVec 64))
(declare-fun x1_ack!4555 () (_ BitVec 64))
(declare-fun x2_ack!4556 () (_ BitVec 64))
(declare-fun x3_ack!4557 () (_ BitVec 64))
(declare-fun b_ack!4558 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4554)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4559) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4553)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4553)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4555) ((_ to_fp 11 53) a_ack!4560))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4556) ((_ to_fp 11 53) x1_ack!4555))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4557) ((_ to_fp 11 53) x2_ack!4556))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4558) ((_ to_fp 11 53) x3_ack!4557))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4560)
                                   ((_ to_fp 11 53) x1_ack!4555))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4555)
                  ((_ to_fp 11 53) a_ack!4560)))
  #x3fefdc6c69272ae5))

(check-sat)
(exit)
