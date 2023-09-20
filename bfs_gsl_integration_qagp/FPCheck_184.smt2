(declare-fun limit_ack!2792 () (_ BitVec 64))
(declare-fun epsabs_ack!2797 () (_ BitVec 64))
(declare-fun a_ack!2798 () (_ BitVec 64))
(declare-fun x1_ack!2793 () (_ BitVec 64))
(declare-fun x2_ack!2794 () (_ BitVec 64))
(declare-fun x3_ack!2795 () (_ BitVec 64))
(declare-fun b_ack!2796 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2792)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2797)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2793) ((_ to_fp 11 53) a_ack!2798))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2794) ((_ to_fp 11 53) x1_ack!2793))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2795) ((_ to_fp 11 53) x2_ack!2794))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2796) ((_ to_fp 11 53) x3_ack!2795))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2798)
                                   ((_ to_fp 11 53) x1_ack!2793))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2793)
                  ((_ to_fp 11 53) a_ack!2798)))
  #x3fdbbcc009016adc))

(check-sat)
(exit)
