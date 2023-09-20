(declare-fun x1_ack!1083 () (_ BitVec 64))
(declare-fun x0_ack!1087 () (_ BitVec 64))
(declare-fun x2_ack!1084 () (_ BitVec 64))
(declare-fun b_ack!1086 () (_ BitVec 64))
(declare-fun a_ack!1085 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1087) ((_ to_fp 11 53) x1_ack!1083)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1083) ((_ to_fp 11 53) x2_ack!1084)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1083)
                       ((_ to_fp 11 53) x0_ack!1087))
               ((_ to_fp 11 53) x0_ack!1087))
       ((_ to_fp 11 53) x1_ack!1083)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1083)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1083)
                       ((_ to_fp 11 53) x0_ack!1087)))
       ((_ to_fp 11 53) x0_ack!1087)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1084)
                       ((_ to_fp 11 53) x1_ack!1083))
               ((_ to_fp 11 53) x1_ack!1083))
       ((_ to_fp 11 53) x2_ack!1084)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1084)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1084)
                       ((_ to_fp 11 53) x1_ack!1083)))
       ((_ to_fp 11 53) x1_ack!1083)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1083)
                    ((_ to_fp 11 53) x0_ack!1087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1084)
                    ((_ to_fp 11 53) x1_ack!1083))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1085) ((_ to_fp 11 53) b_ack!1086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1085) ((_ to_fp 11 53) x0_ack!1087))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1086) ((_ to_fp 11 53) x2_ack!1084))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1085) ((_ to_fp 11 53) b_ack!1086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1085) ((_ to_fp 11 53) x0_ack!1087))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1085) ((_ to_fp 11 53) x1_ack!1083))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1086) ((_ to_fp 11 53) x0_ack!1087))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1086) ((_ to_fp 11 53) x1_ack!1083)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1083) ((_ to_fp 11 53) b_ack!1086))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1083)
                    ((_ to_fp 11 53) x0_ack!1087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1085)
          ((_ to_fp 11 53) x0_ack!1087))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1085)
          ((_ to_fp 11 53) x0_ack!1087))))

(check-sat)
(exit)
