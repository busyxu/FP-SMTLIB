(declare-fun x1_ack!5116 () (_ BitVec 64))
(declare-fun x0_ack!5120 () (_ BitVec 64))
(declare-fun x2_ack!5117 () (_ BitVec 64))
(declare-fun b_ack!5119 () (_ BitVec 64))
(declare-fun a_ack!5118 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5120) ((_ to_fp 11 53) x1_ack!5116)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5116) ((_ to_fp 11 53) x2_ack!5117)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5116)
                       ((_ to_fp 11 53) x0_ack!5120))
               ((_ to_fp 11 53) x0_ack!5120))
       ((_ to_fp 11 53) x1_ack!5116)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5116)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5116)
                       ((_ to_fp 11 53) x0_ack!5120)))
       ((_ to_fp 11 53) x0_ack!5120)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5117)
                       ((_ to_fp 11 53) x1_ack!5116))
               ((_ to_fp 11 53) x1_ack!5116))
       ((_ to_fp 11 53) x2_ack!5117)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5117)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5117)
                       ((_ to_fp 11 53) x1_ack!5116)))
       ((_ to_fp 11 53) x1_ack!5116)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5116)
                    ((_ to_fp 11 53) x0_ack!5120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5117)
                    ((_ to_fp 11 53) x1_ack!5116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5118) ((_ to_fp 11 53) b_ack!5119))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5118) ((_ to_fp 11 53) x0_ack!5120))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5119) ((_ to_fp 11 53) x2_ack!5117))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5118) ((_ to_fp 11 53) b_ack!5119))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5118) ((_ to_fp 11 53) x0_ack!5120))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5118) ((_ to_fp 11 53) x1_ack!5116)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5116) ((_ to_fp 11 53) a_ack!5118))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5119) ((_ to_fp 11 53) x1_ack!5116))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5119) ((_ to_fp 11 53) x2_ack!5117)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5117)
                    ((_ to_fp 11 53) x1_ack!5116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5118)
                       ((_ to_fp 11 53) x1_ack!5116))
               ((_ to_fp 11 53) x1_ack!5116))
       ((_ to_fp 11 53) a_ack!5118)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5118)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5118)
                       ((_ to_fp 11 53) x1_ack!5116)))
       ((_ to_fp 11 53) x1_ack!5116)))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!5119 x1_ack!5116))

(check-sat)
(exit)
