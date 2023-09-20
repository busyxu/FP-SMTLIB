(declare-fun x1_ack!907 () (_ BitVec 64))
(declare-fun x0_ack!911 () (_ BitVec 64))
(declare-fun x2_ack!908 () (_ BitVec 64))
(declare-fun b_ack!910 () (_ BitVec 64))
(declare-fun a_ack!909 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!911) ((_ to_fp 11 53) x1_ack!907)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!907) ((_ to_fp 11 53) x2_ack!908)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!907)
                       ((_ to_fp 11 53) x0_ack!911))
               ((_ to_fp 11 53) x0_ack!911))
       ((_ to_fp 11 53) x1_ack!907)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!907)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!907)
                       ((_ to_fp 11 53) x0_ack!911)))
       ((_ to_fp 11 53) x0_ack!911)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!908)
                       ((_ to_fp 11 53) x1_ack!907))
               ((_ to_fp 11 53) x1_ack!907))
       ((_ to_fp 11 53) x2_ack!908)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!908)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!908)
                       ((_ to_fp 11 53) x1_ack!907)))
       ((_ to_fp 11 53) x1_ack!907)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!907)
                    ((_ to_fp 11 53) x0_ack!911))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!908)
                    ((_ to_fp 11 53) x1_ack!907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!909) ((_ to_fp 11 53) b_ack!910))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!909) ((_ to_fp 11 53) x0_ack!911))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!910) ((_ to_fp 11 53) x2_ack!908))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!909) ((_ to_fp 11 53) b_ack!910))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!909) ((_ to_fp 11 53) x0_ack!911))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!909) ((_ to_fp 11 53) x1_ack!907))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!910) ((_ to_fp 11 53) x0_ack!911))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!910) ((_ to_fp 11 53) x1_ack!907)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!907) ((_ to_fp 11 53) b_ack!910))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!907)
                    ((_ to_fp 11 53) x0_ack!911))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!909 x0_ack!911))

(check-sat)
(exit)
