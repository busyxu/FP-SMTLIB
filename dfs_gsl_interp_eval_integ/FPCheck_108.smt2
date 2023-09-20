(declare-fun x1_ack!1178 () (_ BitVec 64))
(declare-fun x0_ack!1182 () (_ BitVec 64))
(declare-fun x2_ack!1179 () (_ BitVec 64))
(declare-fun b_ack!1181 () (_ BitVec 64))
(declare-fun a_ack!1180 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1182) ((_ to_fp 11 53) x1_ack!1178)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1178) ((_ to_fp 11 53) x2_ack!1179)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1178)
                       ((_ to_fp 11 53) x0_ack!1182))
               ((_ to_fp 11 53) x0_ack!1182))
       ((_ to_fp 11 53) x1_ack!1178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1178)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1178)
                       ((_ to_fp 11 53) x0_ack!1182)))
       ((_ to_fp 11 53) x0_ack!1182)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1179)
                       ((_ to_fp 11 53) x1_ack!1178))
               ((_ to_fp 11 53) x1_ack!1178))
       ((_ to_fp 11 53) x2_ack!1179)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1179)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1179)
                       ((_ to_fp 11 53) x1_ack!1178)))
       ((_ to_fp 11 53) x1_ack!1178)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1178)
                    ((_ to_fp 11 53) x0_ack!1182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1179)
                    ((_ to_fp 11 53) x1_ack!1178))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) b_ack!1181))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) x0_ack!1182))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) x2_ack!1179))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) b_ack!1181))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) x0_ack!1182))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1180) ((_ to_fp 11 53) x1_ack!1178))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) x0_ack!1182))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) x1_ack!1178)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1178) ((_ to_fp 11 53) b_ack!1181))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1178)
                    ((_ to_fp 11 53) x0_ack!1182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1180)
          ((_ to_fp 11 53) x0_ack!1182))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1178)
          ((_ to_fp 11 53) x0_ack!1182))))

(check-sat)
(exit)
