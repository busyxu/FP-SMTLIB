(declare-fun x1_ack!3679 () (_ BitVec 64))
(declare-fun x0_ack!3683 () (_ BitVec 64))
(declare-fun x2_ack!3680 () (_ BitVec 64))
(declare-fun b_ack!3682 () (_ BitVec 64))
(declare-fun a_ack!3681 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3683) ((_ to_fp 11 53) x1_ack!3679)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3679) ((_ to_fp 11 53) x2_ack!3680)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3679)
                       ((_ to_fp 11 53) x0_ack!3683))
               ((_ to_fp 11 53) x0_ack!3683))
       ((_ to_fp 11 53) x1_ack!3679)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3679)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3679)
                       ((_ to_fp 11 53) x0_ack!3683)))
       ((_ to_fp 11 53) x0_ack!3683)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3680)
                       ((_ to_fp 11 53) x1_ack!3679))
               ((_ to_fp 11 53) x1_ack!3679))
       ((_ to_fp 11 53) x2_ack!3680)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3680)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3680)
                       ((_ to_fp 11 53) x1_ack!3679)))
       ((_ to_fp 11 53) x1_ack!3679)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3679)
                    ((_ to_fp 11 53) x0_ack!3683))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3680)
                    ((_ to_fp 11 53) x1_ack!3679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3681) ((_ to_fp 11 53) b_ack!3682))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3681) ((_ to_fp 11 53) x0_ack!3683))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3682) ((_ to_fp 11 53) x2_ack!3680))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3681) ((_ to_fp 11 53) b_ack!3682))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3681) ((_ to_fp 11 53) x0_ack!3683))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3681) ((_ to_fp 11 53) x1_ack!3679)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3679) ((_ to_fp 11 53) a_ack!3681))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3682) ((_ to_fp 11 53) x1_ack!3679))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3682) ((_ to_fp 11 53) x2_ack!3680)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3680)
                    ((_ to_fp 11 53) x1_ack!3679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!3680)
          ((_ to_fp 11 53) x1_ack!3679))))

(check-sat)
(exit)
