(declare-fun x1_ack!1198 () (_ BitVec 64))
(declare-fun x0_ack!1202 () (_ BitVec 64))
(declare-fun x2_ack!1199 () (_ BitVec 64))
(declare-fun b_ack!1201 () (_ BitVec 64))
(declare-fun a_ack!1200 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1202) ((_ to_fp 11 53) x1_ack!1198)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1198) ((_ to_fp 11 53) x2_ack!1199)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1198)
                       ((_ to_fp 11 53) x0_ack!1202))
               ((_ to_fp 11 53) x0_ack!1202))
       ((_ to_fp 11 53) x1_ack!1198)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1198)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1198)
                       ((_ to_fp 11 53) x0_ack!1202)))
       ((_ to_fp 11 53) x0_ack!1202)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1199)
                       ((_ to_fp 11 53) x1_ack!1198))
               ((_ to_fp 11 53) x1_ack!1198))
       ((_ to_fp 11 53) x2_ack!1199)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1199)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1199)
                       ((_ to_fp 11 53) x1_ack!1198)))
       ((_ to_fp 11 53) x1_ack!1198)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1198)
                    ((_ to_fp 11 53) x0_ack!1202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1199)
                    ((_ to_fp 11 53) x1_ack!1198))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1200) ((_ to_fp 11 53) b_ack!1201))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1200) ((_ to_fp 11 53) x0_ack!1202))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1201) ((_ to_fp 11 53) x2_ack!1199))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1200) ((_ to_fp 11 53) b_ack!1201))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1200) ((_ to_fp 11 53) x0_ack!1202))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1200) ((_ to_fp 11 53) x1_ack!1198))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1201) ((_ to_fp 11 53) x0_ack!1202))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1201) ((_ to_fp 11 53) x1_ack!1198)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1198) ((_ to_fp 11 53) b_ack!1201))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1198)
                    ((_ to_fp 11 53) x0_ack!1202))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
