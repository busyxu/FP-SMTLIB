(declare-fun x1_ack!1118 () (_ BitVec 64))
(declare-fun x0_ack!1122 () (_ BitVec 64))
(declare-fun x2_ack!1119 () (_ BitVec 64))
(declare-fun b_ack!1121 () (_ BitVec 64))
(declare-fun a_ack!1120 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1122) ((_ to_fp 11 53) x1_ack!1118)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1118) ((_ to_fp 11 53) x2_ack!1119)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1118)
                       ((_ to_fp 11 53) x0_ack!1122))
               ((_ to_fp 11 53) x0_ack!1122))
       ((_ to_fp 11 53) x1_ack!1118)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1118)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1118)
                       ((_ to_fp 11 53) x0_ack!1122)))
       ((_ to_fp 11 53) x0_ack!1122)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1119)
                       ((_ to_fp 11 53) x1_ack!1118))
               ((_ to_fp 11 53) x1_ack!1118))
       ((_ to_fp 11 53) x2_ack!1119)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1119)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1119)
                       ((_ to_fp 11 53) x1_ack!1118)))
       ((_ to_fp 11 53) x1_ack!1118)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1118)
                    ((_ to_fp 11 53) x0_ack!1122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1119)
                    ((_ to_fp 11 53) x1_ack!1118))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1120) ((_ to_fp 11 53) b_ack!1121))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1120) ((_ to_fp 11 53) x0_ack!1122))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1121) ((_ to_fp 11 53) x2_ack!1119))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1120) ((_ to_fp 11 53) b_ack!1121))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1120) ((_ to_fp 11 53) x0_ack!1122))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1120) ((_ to_fp 11 53) x1_ack!1118))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1121) ((_ to_fp 11 53) x0_ack!1122))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1121) ((_ to_fp 11 53) x1_ack!1118)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1118) ((_ to_fp 11 53) b_ack!1121))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1118)
                    ((_ to_fp 11 53) x0_ack!1122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1118)
          ((_ to_fp 11 53) x0_ack!1122))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1118)
          ((_ to_fp 11 53) x0_ack!1122))))

(check-sat)
(exit)
