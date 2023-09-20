(declare-fun x1_ack!2848 () (_ BitVec 64))
(declare-fun x0_ack!2852 () (_ BitVec 64))
(declare-fun x2_ack!2849 () (_ BitVec 64))
(declare-fun b_ack!2851 () (_ BitVec 64))
(declare-fun a_ack!2850 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2852) ((_ to_fp 11 53) x1_ack!2848)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2848) ((_ to_fp 11 53) x2_ack!2849)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2848)
                       ((_ to_fp 11 53) x0_ack!2852))
               ((_ to_fp 11 53) x0_ack!2852))
       ((_ to_fp 11 53) x1_ack!2848)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2848)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2848)
                       ((_ to_fp 11 53) x0_ack!2852)))
       ((_ to_fp 11 53) x0_ack!2852)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2849)
                       ((_ to_fp 11 53) x1_ack!2848))
               ((_ to_fp 11 53) x1_ack!2848))
       ((_ to_fp 11 53) x2_ack!2849)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2849)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2849)
                       ((_ to_fp 11 53) x1_ack!2848)))
       ((_ to_fp 11 53) x1_ack!2848)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2848)
                    ((_ to_fp 11 53) x0_ack!2852))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2849)
                    ((_ to_fp 11 53) x1_ack!2848))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2850) ((_ to_fp 11 53) b_ack!2851))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2850) ((_ to_fp 11 53) x0_ack!2852))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2851) ((_ to_fp 11 53) x2_ack!2849))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2850) ((_ to_fp 11 53) b_ack!2851))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2850) ((_ to_fp 11 53) x0_ack!2852))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2850) ((_ to_fp 11 53) x1_ack!2848))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2851) ((_ to_fp 11 53) x0_ack!2852))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2851) ((_ to_fp 11 53) x1_ack!2848)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2848) ((_ to_fp 11 53) b_ack!2851))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2848)
                    ((_ to_fp 11 53) x0_ack!2852))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2849)
                    ((_ to_fp 11 53) x1_ack!2848))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
