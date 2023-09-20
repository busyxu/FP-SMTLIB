(declare-fun x1_ack!6838 () (_ BitVec 64))
(declare-fun x0_ack!6842 () (_ BitVec 64))
(declare-fun x2_ack!6839 () (_ BitVec 64))
(declare-fun b_ack!6841 () (_ BitVec 64))
(declare-fun a_ack!6840 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6842) ((_ to_fp 11 53) x1_ack!6838)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6838) ((_ to_fp 11 53) x2_ack!6839)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6838)
                       ((_ to_fp 11 53) x0_ack!6842))
               ((_ to_fp 11 53) x0_ack!6842))
       ((_ to_fp 11 53) x1_ack!6838)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6838)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6838)
                       ((_ to_fp 11 53) x0_ack!6842)))
       ((_ to_fp 11 53) x0_ack!6842)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6839)
                       ((_ to_fp 11 53) x1_ack!6838))
               ((_ to_fp 11 53) x1_ack!6838))
       ((_ to_fp 11 53) x2_ack!6839)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6839)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6839)
                       ((_ to_fp 11 53) x1_ack!6838)))
       ((_ to_fp 11 53) x1_ack!6838)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6838)
                    ((_ to_fp 11 53) x0_ack!6842))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6839)
                    ((_ to_fp 11 53) x1_ack!6838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6840) ((_ to_fp 11 53) b_ack!6841))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6840) ((_ to_fp 11 53) x0_ack!6842))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6841) ((_ to_fp 11 53) x2_ack!6839))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6840) ((_ to_fp 11 53) b_ack!6841))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6840) ((_ to_fp 11 53) x0_ack!6842))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6840) ((_ to_fp 11 53) x1_ack!6838))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6841) ((_ to_fp 11 53) x0_ack!6842))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6841) ((_ to_fp 11 53) x1_ack!6838)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6838) ((_ to_fp 11 53) b_ack!6841))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6838)
                    ((_ to_fp 11 53) x0_ack!6842))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6839)
                    ((_ to_fp 11 53) x1_ack!6838))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
