(declare-fun limit_ack!2820 () (_ BitVec 64))
(declare-fun epsabs_ack!2825 () (_ BitVec 64))
(declare-fun a_ack!2826 () (_ BitVec 64))
(declare-fun x1_ack!2821 () (_ BitVec 64))
(declare-fun x2_ack!2822 () (_ BitVec 64))
(declare-fun x3_ack!2823 () (_ BitVec 64))
(declare-fun b_ack!2824 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2820)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2825)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2821) ((_ to_fp 11 53) a_ack!2826))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2822) ((_ to_fp 11 53) x1_ack!2821))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2823) ((_ to_fp 11 53) x2_ack!2822))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2824) ((_ to_fp 11 53) x3_ack!2823))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2826)
                                   ((_ to_fp 11 53) x1_ack!2821))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2821)
                  ((_ to_fp 11 53) a_ack!2826)))
  #x3fdbbcc009016adc))

(check-sat)
(exit)
