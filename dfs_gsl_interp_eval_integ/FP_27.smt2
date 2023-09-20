(declare-fun x1_ack!807 () (_ BitVec 64))
(declare-fun x0_ack!811 () (_ BitVec 64))
(declare-fun x2_ack!808 () (_ BitVec 64))
(declare-fun b_ack!810 () (_ BitVec 64))
(declare-fun a_ack!809 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!811) ((_ to_fp 11 53) x1_ack!807)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!807) ((_ to_fp 11 53) x2_ack!808)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!807)
                       ((_ to_fp 11 53) x0_ack!811))
               ((_ to_fp 11 53) x0_ack!811))
       ((_ to_fp 11 53) x1_ack!807)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!807)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!807)
                       ((_ to_fp 11 53) x0_ack!811)))
       ((_ to_fp 11 53) x0_ack!811)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!808)
                       ((_ to_fp 11 53) x1_ack!807))
               ((_ to_fp 11 53) x1_ack!807))
       ((_ to_fp 11 53) x2_ack!808)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!808)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!808)
                       ((_ to_fp 11 53) x1_ack!807)))
       ((_ to_fp 11 53) x1_ack!807)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!807)
                    ((_ to_fp 11 53) x0_ack!811))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!808)
                    ((_ to_fp 11 53) x1_ack!807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!809) ((_ to_fp 11 53) b_ack!810))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!809) ((_ to_fp 11 53) x0_ack!811))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!810) ((_ to_fp 11 53) x2_ack!808))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!809) ((_ to_fp 11 53) b_ack!810))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!809) ((_ to_fp 11 53) x0_ack!811))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!809) ((_ to_fp 11 53) x1_ack!807))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!810) ((_ to_fp 11 53) x0_ack!811))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!810) ((_ to_fp 11 53) x1_ack!807)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!807) ((_ to_fp 11 53) b_ack!810))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!807)
                    ((_ to_fp 11 53) x0_ack!811))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
