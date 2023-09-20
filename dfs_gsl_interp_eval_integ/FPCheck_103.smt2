(declare-fun x1_ack!1133 () (_ BitVec 64))
(declare-fun x0_ack!1137 () (_ BitVec 64))
(declare-fun x2_ack!1134 () (_ BitVec 64))
(declare-fun b_ack!1136 () (_ BitVec 64))
(declare-fun a_ack!1135 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1137) ((_ to_fp 11 53) x1_ack!1133)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1133) ((_ to_fp 11 53) x2_ack!1134)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1133)
                       ((_ to_fp 11 53) x0_ack!1137))
               ((_ to_fp 11 53) x0_ack!1137))
       ((_ to_fp 11 53) x1_ack!1133)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1133)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1133)
                       ((_ to_fp 11 53) x0_ack!1137)))
       ((_ to_fp 11 53) x0_ack!1137)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1134)
                       ((_ to_fp 11 53) x1_ack!1133))
               ((_ to_fp 11 53) x1_ack!1133))
       ((_ to_fp 11 53) x2_ack!1134)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1134)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1134)
                       ((_ to_fp 11 53) x1_ack!1133)))
       ((_ to_fp 11 53) x1_ack!1133)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1133)
                    ((_ to_fp 11 53) x0_ack!1137))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1134)
                    ((_ to_fp 11 53) x1_ack!1133))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1135) ((_ to_fp 11 53) b_ack!1136))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1135) ((_ to_fp 11 53) x0_ack!1137))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1136) ((_ to_fp 11 53) x2_ack!1134))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1135) ((_ to_fp 11 53) b_ack!1136))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1135) ((_ to_fp 11 53) x0_ack!1137))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1135) ((_ to_fp 11 53) x1_ack!1133))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1136) ((_ to_fp 11 53) x0_ack!1137))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1136) ((_ to_fp 11 53) x1_ack!1133)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1133) ((_ to_fp 11 53) b_ack!1136))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1133)
                    ((_ to_fp 11 53) x0_ack!1137))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1133)
          ((_ to_fp 11 53) x0_ack!1137))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1133)
          ((_ to_fp 11 53) x0_ack!1137))))

(check-sat)
(exit)
