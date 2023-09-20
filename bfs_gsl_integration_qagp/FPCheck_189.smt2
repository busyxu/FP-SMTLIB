(declare-fun limit_ack!2876 () (_ BitVec 64))
(declare-fun epsabs_ack!2881 () (_ BitVec 64))
(declare-fun a_ack!2882 () (_ BitVec 64))
(declare-fun x1_ack!2877 () (_ BitVec 64))
(declare-fun x2_ack!2878 () (_ BitVec 64))
(declare-fun x3_ack!2879 () (_ BitVec 64))
(declare-fun b_ack!2880 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2876)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2881)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2877) ((_ to_fp 11 53) a_ack!2882))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2878) ((_ to_fp 11 53) x1_ack!2877))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2879) ((_ to_fp 11 53) x2_ack!2878))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2880) ((_ to_fp 11 53) x3_ack!2879))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2882)
                                   ((_ to_fp 11 53) x1_ack!2877))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2877)
                                   ((_ to_fp 11 53) a_ack!2882)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2882)
                    ((_ to_fp 11 53) x1_ack!2877)))
    a!1)))

(check-sat)
(exit)
