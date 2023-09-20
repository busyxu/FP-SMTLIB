(declare-fun x1_ack!5844 () (_ BitVec 64))
(declare-fun x0_ack!5848 () (_ BitVec 64))
(declare-fun x2_ack!5845 () (_ BitVec 64))
(declare-fun b_ack!5847 () (_ BitVec 64))
(declare-fun a_ack!5846 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5848) ((_ to_fp 11 53) x1_ack!5844)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5844) ((_ to_fp 11 53) x2_ack!5845)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5844)
                       ((_ to_fp 11 53) x0_ack!5848))
               ((_ to_fp 11 53) x0_ack!5848))
       ((_ to_fp 11 53) x1_ack!5844)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5844)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5844)
                       ((_ to_fp 11 53) x0_ack!5848)))
       ((_ to_fp 11 53) x0_ack!5848)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5845)
                       ((_ to_fp 11 53) x1_ack!5844))
               ((_ to_fp 11 53) x1_ack!5844))
       ((_ to_fp 11 53) x2_ack!5845)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5845)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5845)
                       ((_ to_fp 11 53) x1_ack!5844)))
       ((_ to_fp 11 53) x1_ack!5844)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5844)
                    ((_ to_fp 11 53) x0_ack!5848))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5845)
                    ((_ to_fp 11 53) x1_ack!5844))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5846) ((_ to_fp 11 53) b_ack!5847))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5846) ((_ to_fp 11 53) x0_ack!5848))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5847) ((_ to_fp 11 53) x2_ack!5845))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5846) ((_ to_fp 11 53) b_ack!5847))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5846) ((_ to_fp 11 53) x0_ack!5848))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5846) ((_ to_fp 11 53) x1_ack!5844)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!5844) ((_ to_fp 11 53) a_ack!5846)))

(check-sat)
(exit)
