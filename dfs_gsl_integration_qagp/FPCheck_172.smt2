(declare-fun limit_ack!2938 () (_ BitVec 64))
(declare-fun epsabs_ack!2943 () (_ BitVec 64))
(declare-fun epsrel_ack!2937 () (_ BitVec 64))
(declare-fun a_ack!2944 () (_ BitVec 64))
(declare-fun x1_ack!2939 () (_ BitVec 64))
(declare-fun x2_ack!2940 () (_ BitVec 64))
(declare-fun x3_ack!2941 () (_ BitVec 64))
(declare-fun b_ack!2942 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2938)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2943) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2937)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2937)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2939) ((_ to_fp 11 53) a_ack!2944))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2940) ((_ to_fp 11 53) x1_ack!2939))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2941) ((_ to_fp 11 53) x2_ack!2940))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2942) ((_ to_fp 11 53) x3_ack!2941))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2944)
                                   ((_ to_fp 11 53) x1_ack!2939))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2939)
                                   ((_ to_fp 11 53) a_ack!2944)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2944)
                    ((_ to_fp 11 53) x1_ack!2939)))
    a!1)))

(check-sat)
(exit)
