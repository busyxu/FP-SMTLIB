(declare-fun x1_ack!1163 () (_ BitVec 64))
(declare-fun x0_ack!1167 () (_ BitVec 64))
(declare-fun x2_ack!1164 () (_ BitVec 64))
(declare-fun b_ack!1166 () (_ BitVec 64))
(declare-fun a_ack!1165 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1167) ((_ to_fp 11 53) x1_ack!1163)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1163) ((_ to_fp 11 53) x2_ack!1164)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1163)
                       ((_ to_fp 11 53) x0_ack!1167))
               ((_ to_fp 11 53) x0_ack!1167))
       ((_ to_fp 11 53) x1_ack!1163)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1163)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1163)
                       ((_ to_fp 11 53) x0_ack!1167)))
       ((_ to_fp 11 53) x0_ack!1167)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1164)
                       ((_ to_fp 11 53) x1_ack!1163))
               ((_ to_fp 11 53) x1_ack!1163))
       ((_ to_fp 11 53) x2_ack!1164)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1164)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1164)
                       ((_ to_fp 11 53) x1_ack!1163)))
       ((_ to_fp 11 53) x1_ack!1163)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1163)
                    ((_ to_fp 11 53) x0_ack!1167))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1164)
                    ((_ to_fp 11 53) x1_ack!1163))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1165) ((_ to_fp 11 53) b_ack!1166))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1165) ((_ to_fp 11 53) x0_ack!1167))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) x2_ack!1164))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1165) ((_ to_fp 11 53) b_ack!1166))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1165) ((_ to_fp 11 53) x0_ack!1167))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1165) ((_ to_fp 11 53) x1_ack!1163))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) x0_ack!1167))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) x1_ack!1163)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1163) ((_ to_fp 11 53) b_ack!1166))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1163)
                    ((_ to_fp 11 53) x0_ack!1167))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1165)
                  ((_ to_fp 11 53) x0_ack!1167))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1165)
                  ((_ to_fp 11 53) x0_ack!1167)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1163)
                  ((_ to_fp 11 53) x0_ack!1167))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1163)
                  ((_ to_fp 11 53) x0_ack!1167)))))

(check-sat)
(exit)
