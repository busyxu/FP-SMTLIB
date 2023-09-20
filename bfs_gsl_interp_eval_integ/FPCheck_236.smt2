(declare-fun x1_ack!2808 () (_ BitVec 64))
(declare-fun x0_ack!2812 () (_ BitVec 64))
(declare-fun x2_ack!2809 () (_ BitVec 64))
(declare-fun b_ack!2811 () (_ BitVec 64))
(declare-fun a_ack!2810 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2812) ((_ to_fp 11 53) x1_ack!2808)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2808) ((_ to_fp 11 53) x2_ack!2809)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2808)
                       ((_ to_fp 11 53) x0_ack!2812))
               ((_ to_fp 11 53) x0_ack!2812))
       ((_ to_fp 11 53) x1_ack!2808)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2808)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2808)
                       ((_ to_fp 11 53) x0_ack!2812)))
       ((_ to_fp 11 53) x0_ack!2812)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2809)
                       ((_ to_fp 11 53) x1_ack!2808))
               ((_ to_fp 11 53) x1_ack!2808))
       ((_ to_fp 11 53) x2_ack!2809)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2809)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2809)
                       ((_ to_fp 11 53) x1_ack!2808)))
       ((_ to_fp 11 53) x1_ack!2808)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2808)
                    ((_ to_fp 11 53) x0_ack!2812))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2809)
                    ((_ to_fp 11 53) x1_ack!2808))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2810) ((_ to_fp 11 53) b_ack!2811))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2810) ((_ to_fp 11 53) x0_ack!2812))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2811) ((_ to_fp 11 53) x2_ack!2809))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2810) ((_ to_fp 11 53) b_ack!2811))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2810) ((_ to_fp 11 53) x0_ack!2812))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2810) ((_ to_fp 11 53) x1_ack!2808)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2808) ((_ to_fp 11 53) a_ack!2810))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2811) ((_ to_fp 11 53) x1_ack!2808))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2811) ((_ to_fp 11 53) x2_ack!2809))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2809)
                    ((_ to_fp 11 53) x1_ack!2808))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2810)
          ((_ to_fp 11 53) x1_ack!2808))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2811)
          ((_ to_fp 11 53) x1_ack!2808))))

(check-sat)
(exit)
