(declare-fun limit_ack!2806 () (_ BitVec 64))
(declare-fun epsabs_ack!2811 () (_ BitVec 64))
(declare-fun a_ack!2812 () (_ BitVec 64))
(declare-fun x1_ack!2807 () (_ BitVec 64))
(declare-fun x2_ack!2808 () (_ BitVec 64))
(declare-fun x3_ack!2809 () (_ BitVec 64))
(declare-fun b_ack!2810 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2806)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2811)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2807) ((_ to_fp 11 53) a_ack!2812))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2808) ((_ to_fp 11 53) x1_ack!2807))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2809) ((_ to_fp 11 53) x2_ack!2808))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2810) ((_ to_fp 11 53) x3_ack!2809))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2812)
                                   ((_ to_fp 11 53) x1_ack!2807))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2807)
                  ((_ to_fp 11 53) a_ack!2812)))
  #x3fdbbcc009016adc))

(check-sat)
(exit)
