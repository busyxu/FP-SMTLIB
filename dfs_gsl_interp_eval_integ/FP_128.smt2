(declare-fun x1_ack!7644 () (_ BitVec 64))
(declare-fun x0_ack!7648 () (_ BitVec 64))
(declare-fun x2_ack!7645 () (_ BitVec 64))
(declare-fun b_ack!7647 () (_ BitVec 64))
(declare-fun a_ack!7646 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7648) ((_ to_fp 11 53) x1_ack!7644)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7644) ((_ to_fp 11 53) x2_ack!7645)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7644)
                       ((_ to_fp 11 53) x0_ack!7648))
               ((_ to_fp 11 53) x0_ack!7648))
       ((_ to_fp 11 53) x1_ack!7644)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7644)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7644)
                       ((_ to_fp 11 53) x0_ack!7648)))
       ((_ to_fp 11 53) x0_ack!7648)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7645)
                       ((_ to_fp 11 53) x1_ack!7644))
               ((_ to_fp 11 53) x1_ack!7644))
       ((_ to_fp 11 53) x2_ack!7645)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7645)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7645)
                       ((_ to_fp 11 53) x1_ack!7644)))
       ((_ to_fp 11 53) x1_ack!7644)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7644)
                    ((_ to_fp 11 53) x0_ack!7648))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7645)
                    ((_ to_fp 11 53) x1_ack!7644))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7646) ((_ to_fp 11 53) b_ack!7647))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7646) ((_ to_fp 11 53) x0_ack!7648))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7647) ((_ to_fp 11 53) x2_ack!7645))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7646) ((_ to_fp 11 53) b_ack!7647))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7646) ((_ to_fp 11 53) x0_ack!7648))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7646) ((_ to_fp 11 53) x1_ack!7644))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7647) ((_ to_fp 11 53) x0_ack!7648)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7644)
                    ((_ to_fp 11 53) x0_ack!7648))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
