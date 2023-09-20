(declare-fun x1_ack!1142 () (_ BitVec 64))
(declare-fun x0_ack!1150 () (_ BitVec 64))
(declare-fun y0_ack!1143 () (_ BitVec 64))
(declare-fun x_ack!1148 () (_ BitVec 64))
(declare-fun y_ack!1149 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1146 () (_ BitVec 64))
(declare-fun z1_ack!1145 () (_ BitVec 64))
(declare-fun z3_ack!1147 () (_ BitVec 64))
(declare-fun z0_ack!1144 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1150) ((_ to_fp 11 53) x1_ack!1142))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1143) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1148) ((_ to_fp 11 53) x0_ack!1150))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1148) ((_ to_fp 11 53) x1_ack!1142))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1149) ((_ to_fp 11 53) y0_ack!1143))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1148) ((_ to_fp 11 53) x0_ack!1150))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1148) ((_ to_fp 11 53) x1_ack!1142)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1149) ((_ to_fp 11 53) y0_ack!1143))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1142)
                       ((_ to_fp 11 53) x0_ack!1150))
               ((_ to_fp 11 53) x0_ack!1150))
       ((_ to_fp 11 53) x1_ack!1142)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1142)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1142)
                       ((_ to_fp 11 53) x0_ack!1150)))
       ((_ to_fp 11 53) x0_ack!1150)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1143))
               ((_ to_fp 11 53) y0_ack!1143))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1143)))
       ((_ to_fp 11 53) y0_ack!1143)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1142)
                                   ((_ to_fp 11 53) x0_ack!1150)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1143)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!1144)
                                   ((_ to_fp 11 53) z3_ack!1147))
                           ((_ to_fp 11 53) z1_ack!1145))
                   ((_ to_fp 11 53) z2_ack!1146))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
