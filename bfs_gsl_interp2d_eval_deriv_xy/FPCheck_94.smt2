(declare-fun x1_ack!1124 () (_ BitVec 64))
(declare-fun x0_ack!1132 () (_ BitVec 64))
(declare-fun y0_ack!1125 () (_ BitVec 64))
(declare-fun x_ack!1130 () (_ BitVec 64))
(declare-fun y_ack!1131 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1128 () (_ BitVec 64))
(declare-fun z1_ack!1127 () (_ BitVec 64))
(declare-fun z3_ack!1129 () (_ BitVec 64))
(declare-fun z0_ack!1126 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1132) ((_ to_fp 11 53) x1_ack!1124))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1125) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1130) ((_ to_fp 11 53) x0_ack!1132))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1130) ((_ to_fp 11 53) x1_ack!1124))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1131) ((_ to_fp 11 53) y0_ack!1125))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1130) ((_ to_fp 11 53) x0_ack!1132))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1130) ((_ to_fp 11 53) x1_ack!1124)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1131) ((_ to_fp 11 53) y0_ack!1125))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1124)
                       ((_ to_fp 11 53) x0_ack!1132))
               ((_ to_fp 11 53) x0_ack!1132))
       ((_ to_fp 11 53) x1_ack!1124)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1124)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1124)
                       ((_ to_fp 11 53) x0_ack!1132)))
       ((_ to_fp 11 53) x0_ack!1132)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1125))
               ((_ to_fp 11 53) y0_ack!1125))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1125)))
       ((_ to_fp 11 53) y0_ack!1125)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1124)
                                   ((_ to_fp 11 53) x0_ack!1132)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1125)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!1126)
                                   ((_ to_fp 11 53) z3_ack!1129))
                           ((_ to_fp 11 53) z1_ack!1127))
                   ((_ to_fp 11 53) z2_ack!1128))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
