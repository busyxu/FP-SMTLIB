(declare-fun x1_ack!6421 () (_ BitVec 64))
(declare-fun x0_ack!6425 () (_ BitVec 64))
(declare-fun x2_ack!6422 () (_ BitVec 64))
(declare-fun b_ack!6424 () (_ BitVec 64))
(declare-fun a_ack!6423 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6425) ((_ to_fp 11 53) x1_ack!6421)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6421) ((_ to_fp 11 53) x2_ack!6422)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6421)
                       ((_ to_fp 11 53) x0_ack!6425))
               ((_ to_fp 11 53) x0_ack!6425))
       ((_ to_fp 11 53) x1_ack!6421)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6421)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6421)
                       ((_ to_fp 11 53) x0_ack!6425)))
       ((_ to_fp 11 53) x0_ack!6425)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6422)
                       ((_ to_fp 11 53) x1_ack!6421))
               ((_ to_fp 11 53) x1_ack!6421))
       ((_ to_fp 11 53) x2_ack!6422)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6422)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6422)
                       ((_ to_fp 11 53) x1_ack!6421)))
       ((_ to_fp 11 53) x1_ack!6421)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6421)
                    ((_ to_fp 11 53) x0_ack!6425))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6422)
                    ((_ to_fp 11 53) x1_ack!6421))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6423) ((_ to_fp 11 53) b_ack!6424))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6423) ((_ to_fp 11 53) x0_ack!6425))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6424) ((_ to_fp 11 53) x2_ack!6422))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6423) ((_ to_fp 11 53) b_ack!6424))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6423) ((_ to_fp 11 53) x0_ack!6425))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6423) ((_ to_fp 11 53) x1_ack!6421)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6421) ((_ to_fp 11 53) a_ack!6423))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6424) ((_ to_fp 11 53) x1_ack!6421))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6424) ((_ to_fp 11 53) x2_ack!6422))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6422)
                    ((_ to_fp 11 53) x1_ack!6421))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
