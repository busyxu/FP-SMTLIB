(declare-fun limit_ack!2848 () (_ BitVec 64))
(declare-fun epsabs_ack!2853 () (_ BitVec 64))
(declare-fun a_ack!2854 () (_ BitVec 64))
(declare-fun x1_ack!2849 () (_ BitVec 64))
(declare-fun x2_ack!2850 () (_ BitVec 64))
(declare-fun x3_ack!2851 () (_ BitVec 64))
(declare-fun b_ack!2852 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2848)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2853)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2849) ((_ to_fp 11 53) a_ack!2854))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2850) ((_ to_fp 11 53) x1_ack!2849))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2851) ((_ to_fp 11 53) x2_ack!2850))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2852) ((_ to_fp 11 53) x3_ack!2851))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2854)
                                   ((_ to_fp 11 53) x1_ack!2849))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2849)
                                   ((_ to_fp 11 53) a_ack!2854)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2854)
                    ((_ to_fp 11 53) x1_ack!2849)))
    a!1)))

(check-sat)
(exit)
