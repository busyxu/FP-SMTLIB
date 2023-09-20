(declare-fun x1_ack!2822 () (_ BitVec 64))
(declare-fun x0_ack!2826 () (_ BitVec 64))
(declare-fun y0_ack!2823 () (_ BitVec 64))
(declare-fun x_ack!2824 () (_ BitVec 64))
(declare-fun y_ack!2825 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2826) ((_ to_fp 11 53) x1_ack!2822))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2823) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2824) ((_ to_fp 11 53) x0_ack!2826))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2824) ((_ to_fp 11 53) x1_ack!2822))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2825) ((_ to_fp 11 53) y0_ack!2823))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2825) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2822)
                       ((_ to_fp 11 53) x0_ack!2826))
               ((_ to_fp 11 53) x0_ack!2826))
       ((_ to_fp 11 53) x1_ack!2822)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2822)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2822)
                       ((_ to_fp 11 53) x0_ack!2826)))
       ((_ to_fp 11 53) x0_ack!2826)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2823))
               ((_ to_fp 11 53) y0_ack!2823))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2823)))
       ((_ to_fp 11 53) y0_ack!2823)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2825)
                                   ((_ to_fp 11 53) y0_ack!2823))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2823))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!2824)
                    ((_ to_fp 11 53) x0_ack!2826))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2822)
                    ((_ to_fp 11 53) x0_ack!2826)))
    a!1)))

(check-sat)
(exit)
