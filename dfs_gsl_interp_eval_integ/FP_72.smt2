(declare-fun x1_ack!3846 () (_ BitVec 64))
(declare-fun x0_ack!3850 () (_ BitVec 64))
(declare-fun x2_ack!3847 () (_ BitVec 64))
(declare-fun b_ack!3849 () (_ BitVec 64))
(declare-fun a_ack!3848 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3850) ((_ to_fp 11 53) x1_ack!3846)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3846) ((_ to_fp 11 53) x2_ack!3847)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3846)
                       ((_ to_fp 11 53) x0_ack!3850))
               ((_ to_fp 11 53) x0_ack!3850))
       ((_ to_fp 11 53) x1_ack!3846)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3846)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3846)
                       ((_ to_fp 11 53) x0_ack!3850)))
       ((_ to_fp 11 53) x0_ack!3850)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3847)
                       ((_ to_fp 11 53) x1_ack!3846))
               ((_ to_fp 11 53) x1_ack!3846))
       ((_ to_fp 11 53) x2_ack!3847)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3847)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3847)
                       ((_ to_fp 11 53) x1_ack!3846)))
       ((_ to_fp 11 53) x1_ack!3846)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3846)
                    ((_ to_fp 11 53) x0_ack!3850))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3847)
                    ((_ to_fp 11 53) x1_ack!3846))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3848) ((_ to_fp 11 53) b_ack!3849))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3848) ((_ to_fp 11 53) x0_ack!3850))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3849) ((_ to_fp 11 53) x2_ack!3847))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3848) ((_ to_fp 11 53) b_ack!3849))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3848) ((_ to_fp 11 53) x0_ack!3850))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3848) ((_ to_fp 11 53) x1_ack!3846))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3849) ((_ to_fp 11 53) x0_ack!3850))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3849) ((_ to_fp 11 53) x1_ack!3846))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3846)
                    ((_ to_fp 11 53) x0_ack!3850))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
