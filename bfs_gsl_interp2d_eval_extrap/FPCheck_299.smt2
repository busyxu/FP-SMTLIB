(declare-fun x1_ack!3133 () (_ BitVec 64))
(declare-fun x0_ack!3138 () (_ BitVec 64))
(declare-fun y0_ack!3134 () (_ BitVec 64))
(declare-fun x_ack!3136 () (_ BitVec 64))
(declare-fun y_ack!3137 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!3135 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3138) ((_ to_fp 11 53) x1_ack!3133))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3134) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3136) ((_ to_fp 11 53) x0_ack!3138))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3136) ((_ to_fp 11 53) x1_ack!3133))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3137) ((_ to_fp 11 53) y0_ack!3134))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3137) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3133)
                       ((_ to_fp 11 53) x0_ack!3138))
               ((_ to_fp 11 53) x0_ack!3138))
       ((_ to_fp 11 53) x1_ack!3133)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3133)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3133)
                       ((_ to_fp 11 53) x0_ack!3138)))
       ((_ to_fp 11 53) x0_ack!3138)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3134))
               ((_ to_fp 11 53) y0_ack!3134))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3134)))
       ((_ to_fp 11 53) y0_ack!3134)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3136)
                                   ((_ to_fp 11 53) x0_ack!3138))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3133)
                                   ((_ to_fp 11 53) x0_ack!3138)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3137)
                                   ((_ to_fp 11 53) y0_ack!3134))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3134))))))
  (FPCHECK_FMUL_ACCURACY a!1 z2_ack!3135)))

(check-sat)
(exit)
