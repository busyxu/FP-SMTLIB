(declare-fun x1_ack!982 () (_ BitVec 64))
(declare-fun x0_ack!986 () (_ BitVec 64))
(declare-fun x2_ack!983 () (_ BitVec 64))
(declare-fun b_ack!985 () (_ BitVec 64))
(declare-fun a_ack!984 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!986) ((_ to_fp 11 53) x1_ack!982)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!982) ((_ to_fp 11 53) x2_ack!983)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!982)
                       ((_ to_fp 11 53) x0_ack!986))
               ((_ to_fp 11 53) x0_ack!986))
       ((_ to_fp 11 53) x1_ack!982)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!982)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!982)
                       ((_ to_fp 11 53) x0_ack!986)))
       ((_ to_fp 11 53) x0_ack!986)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!983)
                       ((_ to_fp 11 53) x1_ack!982))
               ((_ to_fp 11 53) x1_ack!982))
       ((_ to_fp 11 53) x2_ack!983)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!983)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!983)
                       ((_ to_fp 11 53) x1_ack!982)))
       ((_ to_fp 11 53) x1_ack!982)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!982)
                    ((_ to_fp 11 53) x0_ack!986))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!983)
                    ((_ to_fp 11 53) x1_ack!982))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!984) ((_ to_fp 11 53) b_ack!985))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!984) ((_ to_fp 11 53) x0_ack!986))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!985) ((_ to_fp 11 53) x2_ack!983))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!984) ((_ to_fp 11 53) b_ack!985))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!984) ((_ to_fp 11 53) x0_ack!986))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!984) ((_ to_fp 11 53) x1_ack!982))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!985) ((_ to_fp 11 53) x0_ack!986)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!982)
                    ((_ to_fp 11 53) x0_ack!986))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!984)
          ((_ to_fp 11 53) x0_ack!986))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!985)
          ((_ to_fp 11 53) x0_ack!986))))

(check-sat)
(exit)
