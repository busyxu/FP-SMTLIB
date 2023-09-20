(declare-fun x1_ack!3982 () (_ BitVec 64))
(declare-fun x0_ack!3986 () (_ BitVec 64))
(declare-fun x2_ack!3983 () (_ BitVec 64))
(declare-fun b_ack!3985 () (_ BitVec 64))
(declare-fun a_ack!3984 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3986) ((_ to_fp 11 53) x1_ack!3982)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3982) ((_ to_fp 11 53) x2_ack!3983)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3982)
                       ((_ to_fp 11 53) x0_ack!3986))
               ((_ to_fp 11 53) x0_ack!3986))
       ((_ to_fp 11 53) x1_ack!3982)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3982)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3982)
                       ((_ to_fp 11 53) x0_ack!3986)))
       ((_ to_fp 11 53) x0_ack!3986)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3983)
                       ((_ to_fp 11 53) x1_ack!3982))
               ((_ to_fp 11 53) x1_ack!3982))
       ((_ to_fp 11 53) x2_ack!3983)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3983)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3983)
                       ((_ to_fp 11 53) x1_ack!3982)))
       ((_ to_fp 11 53) x1_ack!3982)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3982)
                    ((_ to_fp 11 53) x0_ack!3986))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3983)
                    ((_ to_fp 11 53) x1_ack!3982))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3984) ((_ to_fp 11 53) b_ack!3985))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3984) ((_ to_fp 11 53) x0_ack!3986))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3985) ((_ to_fp 11 53) x2_ack!3983))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3984) ((_ to_fp 11 53) b_ack!3985))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3984) ((_ to_fp 11 53) x0_ack!3986))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3984) ((_ to_fp 11 53) x1_ack!3982))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3985) ((_ to_fp 11 53) x0_ack!3986))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3985) ((_ to_fp 11 53) x1_ack!3982))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3982)
                    ((_ to_fp 11 53) x0_ack!3986))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3984)
          ((_ to_fp 11 53) x0_ack!3986))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3984)
          ((_ to_fp 11 53) x0_ack!3986))))

(check-sat)
(exit)
