(declare-fun x1_ack!4930 () (_ BitVec 64))
(declare-fun x0_ack!4934 () (_ BitVec 64))
(declare-fun x2_ack!4931 () (_ BitVec 64))
(declare-fun b_ack!4933 () (_ BitVec 64))
(declare-fun a_ack!4932 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4934) ((_ to_fp 11 53) x1_ack!4930)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4930) ((_ to_fp 11 53) x2_ack!4931)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4930)
                       ((_ to_fp 11 53) x0_ack!4934))
               ((_ to_fp 11 53) x0_ack!4934))
       ((_ to_fp 11 53) x1_ack!4930)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4930)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4930)
                       ((_ to_fp 11 53) x0_ack!4934)))
       ((_ to_fp 11 53) x0_ack!4934)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4931)
                       ((_ to_fp 11 53) x1_ack!4930))
               ((_ to_fp 11 53) x1_ack!4930))
       ((_ to_fp 11 53) x2_ack!4931)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4931)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4931)
                       ((_ to_fp 11 53) x1_ack!4930)))
       ((_ to_fp 11 53) x1_ack!4930)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4930)
                    ((_ to_fp 11 53) x0_ack!4934))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4931)
                    ((_ to_fp 11 53) x1_ack!4930))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4932) ((_ to_fp 11 53) b_ack!4933))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4932) ((_ to_fp 11 53) x0_ack!4934))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4933) ((_ to_fp 11 53) x2_ack!4931))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4932) ((_ to_fp 11 53) b_ack!4933))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4932) ((_ to_fp 11 53) x0_ack!4934))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4932) ((_ to_fp 11 53) x1_ack!4930)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4930) ((_ to_fp 11 53) a_ack!4932))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4933) ((_ to_fp 11 53) x1_ack!4930))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4933) ((_ to_fp 11 53) x2_ack!4931)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4931)
                    ((_ to_fp 11 53) x1_ack!4930))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!4932 x1_ack!4930))

(check-sat)
(exit)
