(declare-fun x1_ack!5678 () (_ BitVec 64))
(declare-fun x0_ack!5682 () (_ BitVec 64))
(declare-fun x2_ack!5679 () (_ BitVec 64))
(declare-fun b_ack!5681 () (_ BitVec 64))
(declare-fun a_ack!5680 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5682) ((_ to_fp 11 53) x1_ack!5678)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5678) ((_ to_fp 11 53) x2_ack!5679)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5678)
                       ((_ to_fp 11 53) x0_ack!5682))
               ((_ to_fp 11 53) x0_ack!5682))
       ((_ to_fp 11 53) x1_ack!5678)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5678)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5678)
                       ((_ to_fp 11 53) x0_ack!5682)))
       ((_ to_fp 11 53) x0_ack!5682)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5679)
                       ((_ to_fp 11 53) x1_ack!5678))
               ((_ to_fp 11 53) x1_ack!5678))
       ((_ to_fp 11 53) x2_ack!5679)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5679)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5679)
                       ((_ to_fp 11 53) x1_ack!5678)))
       ((_ to_fp 11 53) x1_ack!5678)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5678)
                    ((_ to_fp 11 53) x0_ack!5682))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5679)
                    ((_ to_fp 11 53) x1_ack!5678))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5680) ((_ to_fp 11 53) b_ack!5681))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5680) ((_ to_fp 11 53) x0_ack!5682))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5681) ((_ to_fp 11 53) x2_ack!5679))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5680) ((_ to_fp 11 53) b_ack!5681))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5680) ((_ to_fp 11 53) x0_ack!5682))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5680) ((_ to_fp 11 53) x1_ack!5678))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5681) ((_ to_fp 11 53) x0_ack!5682))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5681) ((_ to_fp 11 53) x1_ack!5678)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5678) ((_ to_fp 11 53) b_ack!5681))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5678)
                    ((_ to_fp 11 53) x0_ack!5682))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
