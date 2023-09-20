(declare-fun x1_ack!5733 () (_ BitVec 64))
(declare-fun x0_ack!5737 () (_ BitVec 64))
(declare-fun x2_ack!5734 () (_ BitVec 64))
(declare-fun b_ack!5736 () (_ BitVec 64))
(declare-fun a_ack!5735 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5737) ((_ to_fp 11 53) x1_ack!5733)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5733) ((_ to_fp 11 53) x2_ack!5734)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5733)
                       ((_ to_fp 11 53) x0_ack!5737))
               ((_ to_fp 11 53) x0_ack!5737))
       ((_ to_fp 11 53) x1_ack!5733)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5733)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5733)
                       ((_ to_fp 11 53) x0_ack!5737)))
       ((_ to_fp 11 53) x0_ack!5737)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5734)
                       ((_ to_fp 11 53) x1_ack!5733))
               ((_ to_fp 11 53) x1_ack!5733))
       ((_ to_fp 11 53) x2_ack!5734)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5734)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5734)
                       ((_ to_fp 11 53) x1_ack!5733)))
       ((_ to_fp 11 53) x1_ack!5733)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5733)
                    ((_ to_fp 11 53) x0_ack!5737))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5734)
                    ((_ to_fp 11 53) x1_ack!5733))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5735) ((_ to_fp 11 53) b_ack!5736))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5735) ((_ to_fp 11 53) x0_ack!5737))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5736) ((_ to_fp 11 53) x2_ack!5734))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5735) ((_ to_fp 11 53) b_ack!5736))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5735) ((_ to_fp 11 53) x0_ack!5737))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5735) ((_ to_fp 11 53) x1_ack!5733))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5736) ((_ to_fp 11 53) x0_ack!5737))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5736) ((_ to_fp 11 53) x1_ack!5733)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5733) ((_ to_fp 11 53) b_ack!5736))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5733)
                    ((_ to_fp 11 53) x0_ack!5737))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
