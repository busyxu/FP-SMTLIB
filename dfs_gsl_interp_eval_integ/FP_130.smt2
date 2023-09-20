(declare-fun x1_ack!7774 () (_ BitVec 64))
(declare-fun x0_ack!7778 () (_ BitVec 64))
(declare-fun x2_ack!7775 () (_ BitVec 64))
(declare-fun b_ack!7777 () (_ BitVec 64))
(declare-fun a_ack!7776 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7778) ((_ to_fp 11 53) x1_ack!7774)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7774) ((_ to_fp 11 53) x2_ack!7775)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7774)
                       ((_ to_fp 11 53) x0_ack!7778))
               ((_ to_fp 11 53) x0_ack!7778))
       ((_ to_fp 11 53) x1_ack!7774)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7774)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7774)
                       ((_ to_fp 11 53) x0_ack!7778)))
       ((_ to_fp 11 53) x0_ack!7778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7775)
                       ((_ to_fp 11 53) x1_ack!7774))
               ((_ to_fp 11 53) x1_ack!7774))
       ((_ to_fp 11 53) x2_ack!7775)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7775)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7775)
                       ((_ to_fp 11 53) x1_ack!7774)))
       ((_ to_fp 11 53) x1_ack!7774)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7774)
                    ((_ to_fp 11 53) x0_ack!7778))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7775)
                    ((_ to_fp 11 53) x1_ack!7774))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7776) ((_ to_fp 11 53) b_ack!7777))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7776) ((_ to_fp 11 53) x0_ack!7778))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7777) ((_ to_fp 11 53) x2_ack!7775))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7776) ((_ to_fp 11 53) b_ack!7777))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7776) ((_ to_fp 11 53) x0_ack!7778))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7776) ((_ to_fp 11 53) x1_ack!7774))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7777) ((_ to_fp 11 53) x0_ack!7778)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7774)
                    ((_ to_fp 11 53) x0_ack!7778))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
