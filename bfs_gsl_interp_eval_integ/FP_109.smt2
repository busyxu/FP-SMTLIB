(declare-fun x1_ack!5984 () (_ BitVec 64))
(declare-fun x0_ack!5988 () (_ BitVec 64))
(declare-fun x2_ack!5985 () (_ BitVec 64))
(declare-fun b_ack!5987 () (_ BitVec 64))
(declare-fun a_ack!5986 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5988) ((_ to_fp 11 53) x1_ack!5984)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5984) ((_ to_fp 11 53) x2_ack!5985)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5984)
                       ((_ to_fp 11 53) x0_ack!5988))
               ((_ to_fp 11 53) x0_ack!5988))
       ((_ to_fp 11 53) x1_ack!5984)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5984)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5984)
                       ((_ to_fp 11 53) x0_ack!5988)))
       ((_ to_fp 11 53) x0_ack!5988)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5985)
                       ((_ to_fp 11 53) x1_ack!5984))
               ((_ to_fp 11 53) x1_ack!5984))
       ((_ to_fp 11 53) x2_ack!5985)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5985)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5985)
                       ((_ to_fp 11 53) x1_ack!5984)))
       ((_ to_fp 11 53) x1_ack!5984)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5984)
                    ((_ to_fp 11 53) x0_ack!5988))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5985)
                    ((_ to_fp 11 53) x1_ack!5984))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5986) ((_ to_fp 11 53) b_ack!5987))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5986) ((_ to_fp 11 53) x0_ack!5988))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5987) ((_ to_fp 11 53) x2_ack!5985))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5986) ((_ to_fp 11 53) b_ack!5987))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5986) ((_ to_fp 11 53) x0_ack!5988))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5986) ((_ to_fp 11 53) x1_ack!5984))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5987) ((_ to_fp 11 53) x0_ack!5988))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5987) ((_ to_fp 11 53) x1_ack!5984)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5984) ((_ to_fp 11 53) b_ack!5987))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5984)
                    ((_ to_fp 11 53) x0_ack!5988))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
