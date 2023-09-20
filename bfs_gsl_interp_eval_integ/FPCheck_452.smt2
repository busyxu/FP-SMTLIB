(declare-fun x1_ack!5723 () (_ BitVec 64))
(declare-fun x0_ack!5727 () (_ BitVec 64))
(declare-fun x2_ack!5724 () (_ BitVec 64))
(declare-fun b_ack!5726 () (_ BitVec 64))
(declare-fun a_ack!5725 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5727) ((_ to_fp 11 53) x1_ack!5723)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5723) ((_ to_fp 11 53) x2_ack!5724)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5723)
                       ((_ to_fp 11 53) x0_ack!5727))
               ((_ to_fp 11 53) x0_ack!5727))
       ((_ to_fp 11 53) x1_ack!5723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5723)
                       ((_ to_fp 11 53) x0_ack!5727)))
       ((_ to_fp 11 53) x0_ack!5727)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5724)
                       ((_ to_fp 11 53) x1_ack!5723))
               ((_ to_fp 11 53) x1_ack!5723))
       ((_ to_fp 11 53) x2_ack!5724)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5724)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5724)
                       ((_ to_fp 11 53) x1_ack!5723)))
       ((_ to_fp 11 53) x1_ack!5723)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5723)
                    ((_ to_fp 11 53) x0_ack!5727))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5724)
                    ((_ to_fp 11 53) x1_ack!5723))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5725) ((_ to_fp 11 53) b_ack!5726))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5725) ((_ to_fp 11 53) x0_ack!5727))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5726) ((_ to_fp 11 53) x2_ack!5724))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5725) ((_ to_fp 11 53) b_ack!5726))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5725) ((_ to_fp 11 53) x0_ack!5727))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5725) ((_ to_fp 11 53) x1_ack!5723))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5726) ((_ to_fp 11 53) x0_ack!5727))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5726) ((_ to_fp 11 53) x1_ack!5723)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5723) ((_ to_fp 11 53) b_ack!5726))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5723)
                    ((_ to_fp 11 53) x0_ack!5727))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!5723 x0_ack!5727))

(check-sat)
(exit)
