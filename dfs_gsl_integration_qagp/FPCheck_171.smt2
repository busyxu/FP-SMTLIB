(declare-fun limit_ack!2906 () (_ BitVec 64))
(declare-fun epsabs_ack!2911 () (_ BitVec 64))
(declare-fun epsrel_ack!2905 () (_ BitVec 64))
(declare-fun a_ack!2912 () (_ BitVec 64))
(declare-fun x1_ack!2907 () (_ BitVec 64))
(declare-fun x2_ack!2908 () (_ BitVec 64))
(declare-fun x3_ack!2909 () (_ BitVec 64))
(declare-fun b_ack!2910 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2906)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2911) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2905)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2905)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2907) ((_ to_fp 11 53) a_ack!2912))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2908) ((_ to_fp 11 53) x1_ack!2907))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2909) ((_ to_fp 11 53) x2_ack!2908))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2910) ((_ to_fp 11 53) x3_ack!2909))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2912)
                                   ((_ to_fp 11 53) x1_ack!2907))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2907)
                  ((_ to_fp 11 53) a_ack!2912)))
  #x3fdbbcc009016adc))

(check-sat)
(exit)
